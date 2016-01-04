.class public Landroid/webkitsec/HtmlComposerView;
.super Landroid/webkitsec/WebView;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HtmlComposerView$CursorDirection;,
        Landroid/webkitsec/HtmlComposerView$SelectionOffset;,
        Landroid/webkitsec/HtmlComposerView$ResultTransport;,
        Landroid/webkitsec/HtmlComposerView$HCWHandler;,
        Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;,
        Landroid/webkitsec/HtmlComposerView$StylusEventListener;,
        Landroid/webkitsec/HtmlComposerView$MenuHandler;,
        Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;,
        Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;,
        Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;,
        Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;,
        Landroid/webkitsec/HtmlComposerView$InsertionPosition;
    }
.end annotation


# static fields
.field public static final ACTION_SEC_TRANSLATE_FOR_NON_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field public static final DELAYED_UPDATE_IMAGE_OUTLINE:I = 0x503

.field public static final EXTRA_NAME_AUTO_START_TRANSLATION:Ljava/lang/String; = "auto_start_translation"

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field private static final EXTRA_REGION_FOR_RESIZING_HANDLER:I = 0x1e

.field public static final EXTRA_VALUE_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_RESULT_CANCEL:I = 0x0

.field public static final EXTRA_VALUE_RESULT_OK:I = 0x1

.field public static final HIT_INSERTED_IMAGE:I = 0x502

.field public static final ID_COPY:I = 0x1020021

.field public static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field public static final ID_REDO:I = 0x65

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field public static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field public static final ID_UNDO:I = 0x2711

.field public static final INVOKE_TALKBACK:I = 0x500

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field private static final MINIMUM_SIZE_FOR_RESIZING:I = 0xa

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER:I = 0x1000

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER_MIXED:I = 0x2000

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT:I = 0x400

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT_MIXED:I = 0x800

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT:I = 0x4000

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT_MIXED:I = 0x8000

.field public static final RICHLY_EDITING_STATE_BOLD:I = 0x1

.field public static final RICHLY_EDITING_STATE_BOLD_MIXED:I = 0x2

.field public static final RICHLY_EDITING_STATE_ITALIC:I = 0x4

.field public static final RICHLY_EDITING_STATE_ITALIC_MIXED:I = 0x8

.field public static final RICHLY_EDITING_STATE_NONE:I = 0x0

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST:I = 0x40

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST_MIXED:I = 0x80

.field public static final RICHLY_EDITING_STATE_UNDERLINE:I = 0x10

.field public static final RICHLY_EDITING_STATE_UNDERLINE_MIXED:I = 0x20

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST:I = 0x100

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST_MIXED:I = 0x200

.field public static final SELECTION_CHANGE_EVENT:I = 0x504

.field public static final TOUCH_DRAG_DELTA:I = 0xa

.field public static final UPDATE_RICHTEXT_TOOLBAR:I = 0x501

.field protected static mGVR:Landroid/graphics/Rect;

.field public static operSel:I


# instance fields
.field public DEBUG:Z

.field public final EMPTY_STRING:Ljava/lang/String;

.field private bLastSoftKeyPadStateShowing:Z

.field bitmap:Landroid/graphics/Bitmap;

.field private bm_height:I

.field private bm_width:I

.field bottomMiddleCropHandler:Landroid/graphics/Rect;

.field private bottomMiddleHandleEnabled:Z

.field public clpBrdStrg:Ljava/lang/String;

.field private defaultLoadString:Ljava/lang/String;

.field private extraHeightRegionToCover:I

.field extraRegiontoCover:I

.field private firstOutlineLeft:F

.field private firstOutlineTop:F

.field handlesPath:Landroid/graphics/Path;

.field private ignoreMaxLength:Z

.field public imageCanbeMoved:Z

.field public imageCanbeResized:Z

.field private imageSelectedX:I

.field private imageSelectedY:I

.field imagetRect:Landroid/graphics/RectF;

.field imeOptions:I

.field imgHeight:F

.field imgWidth:F

.field protected isContextMenuVisible:Z

.field public isImageSelected:Z

.field private isInComposingState:Z

.field private isPhone:Z

.field private isSelectionset:Z

.field public isTouchedImage:Z

.field private isViewInFocus:Z

.field private lb_height:I

.field private lb_width:I

.field leftBottomCropHandler:Landroid/graphics/Rect;

.field private leftBottomHandleEnabled:Z

.field leftMiddleCropHandler:Landroid/graphics/Rect;

.field private leftMiddleHandleEnabled:Z

.field leftTopCropHandler:Landroid/graphics/Rect;

.field private leftTopHandleEnabled:Z

.field private lm_height:I

.field private lm_width:I

.field private lt_height:I

.field private lt_width:I

.field private mAdd:I

.field private mAltKeyIsPressed:Z

.field private mByHWKeyCommand:Z

.field private mCaller:Ljava/lang/String;

.field private mContentX:I

.field private mContentY:I

.field private mConversionFactorX:I

.field private mConversionFactorY:I

.field private mCtrlKeyIsPressed:Z

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mDensity:F

.field private mEmojiIsActive:Z

.field public mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

.field private mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

.field public mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

.field public mImageRect:Landroid/graphics/Rect;

.field public mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

.field private mIsInRotation:Z

.field private mIsSCHMenu:Z

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field mLocalEndX:I

.field mLocalEndY:I

.field mLocalStartX:I

.field mLocalStartY:I

.field private mLongPressForActionPopup:Z

.field private mLongPressForSelectionCallback:Z

.field protected mLongPressed:Z

.field public mMaxHtmlLength:I

.field mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

.field private mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

.field private mPrivateOptions:Ljava/lang/String;

.field private mRHIResource:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectNotScrolled:Z

.field private mRemove:I

.field private mResizingHoverImage:Landroid/widget/ImageView;

.field public mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

.field private mSCHMoveFlag:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectionHandlerIsShown:Z

.field private mShiftKeyIsPressed:Z

.field mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

.field private mSymKeyIsPressed:Z

.field mTargetView:Landroid/webkitsec/HtmlComposerView;

.field private mTextInput:Landroid/text/method/TextKeyListener;

.field private mToastForClipboard:Landroid/widget/Toast;

.field private mToastForMaxLength:Landroid/widget/Toast;

.field private mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;

.field private mXCenter:I

.field private mYCenter:I

.field private mZoomFactor:F

.field private misResizeControlsInitialised:Z

.field public myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

.field private originalHeight:I

.field private originalWidth:I

.field outLinePath:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private prevOutlineHeight:F

.field private prevOutlineLeft:F

.field private prevOutlineTop:F

.field private prevOutlineWidth:F

.field private prevSpanComposerText:Ljava/lang/String;

.field prevX:I

.field prevY:I

.field private prevlen:I

.field rb_height:I

.field rb_width:I

.field region_rect_BM:Landroid/graphics/Region;

.field region_rect_LB:Landroid/graphics/Region;

.field region_rect_LM:Landroid/graphics/Region;

.field region_rect_LT:Landroid/graphics/Region;

.field region_rect_OutLine:Landroid/graphics/Region;

.field region_rect_RB:Landroid/graphics/Region;

.field region_rect_RM:Landroid/graphics/Region;

.field region_rect_RT:Landroid/graphics/Region;

.field region_rect_TM:Landroid/graphics/Region;

.field public resizingHandlerInActionMove:Z

.field rightBottomCropHandler:Landroid/graphics/Rect;

.field rightBottomHandleEnabled:Z

.field rightMiddleCropHandler:Landroid/graphics/Rect;

.field private rightMiddleHandleEnabled:Z

.field rightTopCropHandler:Landroid/graphics/Rect;

.field private rightTopHandleEnabled:Z

.field private rm_height:I

.field private rm_width:I

.field private rt_height:I

.field private rt_width:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field public strTexttoSpeech:Ljava/lang/String;

.field public textSelected:Ljava/lang/String;

.field textWatcher:Landroid/text/TextWatcher;

.field tm_height:I

.field tm_width:I

.field topMiddleCropHandler:Landroid/graphics/Rect;

.field private topMiddleHandleEnabled:Z

.field widthOfHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 364
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    .line 605
    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/HtmlComposerView;->operSel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 433
    invoke-direct {p0, p1}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;)V

    .line 150
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v0, 0x420000ff    # 32.000973f

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 199
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 200
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 201
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    .line 204
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 205
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 208
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 211
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 212
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 269
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 271
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 272
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 275
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 280
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 285
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 292
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 293
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 295
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 297
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 298
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 299
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 300
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 301
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 303
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 307
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 311
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 315
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 316
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 317
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 319
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 320
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 321
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 322
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 324
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 325
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 326
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 327
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 334
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 335
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 336
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 337
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 366
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 371
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 375
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 620
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 621
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2386
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2387
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    .line 2388
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    .line 6102
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6103
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6104
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6105
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6299
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6300
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6302
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6303
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6305
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6307
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 434
    iput-object p0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 435
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 439
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v0, 0x420000ff    # 32.000973f

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 199
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 200
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 201
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    .line 204
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 205
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 208
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 211
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 212
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 269
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 271
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 272
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 275
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 280
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 285
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 292
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 293
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 295
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 297
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 298
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 299
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 300
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 301
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 303
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 307
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 311
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 315
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 316
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 317
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 319
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 320
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 321
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 322
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 324
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 325
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 326
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 327
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 334
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 335
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 336
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 337
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 366
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 371
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 375
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 620
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 621
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2386
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2387
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    .line 2388
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    .line 6102
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6103
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6104
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6105
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6299
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6300
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6302
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6303
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6305
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6307
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 440
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 444
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v0, 0x420000ff    # 32.000973f

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 199
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 200
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 201
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    .line 204
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 205
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 206
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 208
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 211
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 212
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 269
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 271
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 272
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 275
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 280
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 285
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 292
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 293
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 295
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 297
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 298
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 299
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 300
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 301
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 303
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 307
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 311
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 315
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 316
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 317
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 319
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 320
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 321
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 322
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 324
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 325
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 326
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 327
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 334
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 335
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 336
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 337
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 366
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 371
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 375
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 376
    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 620
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 621
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2386
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2387
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    .line 2388
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    .line 6102
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6103
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6104
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6105
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6299
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6300
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6302
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6303
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6305
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6307
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 445
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 449
    invoke-direct {p0, p1}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;)V

    .line 150
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v1, 0x420000ff    # 32.000973f

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v1, 0x186a0

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 199
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 200
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 201
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    .line 204
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 205
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 206
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 208
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 211
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 212
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 269
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 271
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 272
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 275
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 280
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 285
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 292
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 293
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 295
    const/16 v1, 0x14

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 297
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 298
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 299
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 300
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 301
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 303
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 307
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 311
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 315
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 316
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 317
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 319
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 320
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 321
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 322
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 324
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 325
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 326
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 327
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 334
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 335
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 336
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 337
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 339
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 366
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 371
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 375
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 376
    new-instance v1, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v1, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 619
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 620
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 621
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2386
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2387
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartX:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mLocalStartY:I

    .line 2388
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndX:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mLocalEndY:I

    .line 6102
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6103
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6104
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6105
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6299
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6300
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6302
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6303
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6305
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6307
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 450
    invoke-direct {p0, p2}, Landroid/webkitsec/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x140

    const/16 v9, 0x50

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 455
    invoke-virtual {p0, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 456
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebViewProvider()Landroid/webkitsec/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebViewClassic;

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 457
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v1, v1, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    .line 458
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput v8, v0, Landroid/webkitsec/WebViewClassic;->currentIndex:I

    .line 459
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setJavaScriptEnabled(Z)V

    .line 460
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setSupportZoom(Z)V

    .line 461
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    .line 462
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 463
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setAdvanceCommands(Z)V

    .line 464
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setDisableAnimation(Z)V

    .line 466
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-boolean v7, v0, Landroid/webkitsec/WebViewClassic;->mDisableSelectionPopup:Z

    .line 469
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 470
    .local v6, "metric":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 472
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v10, :cond_0

    .line 473
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setHighResolutionDevice(Z)V

    .line 475
    :cond_0
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 477
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 478
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 480
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    .line 481
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XXXFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    .line 496
    :cond_1
    :goto_0
    new-instance v0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 497
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 499
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebClipboard;->setInterfaceWithClipboard(Z)V

    .line 502
    :cond_2
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->enableEditing()V

    .line 505
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v7, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 506
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 507
    iput-object p0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 508
    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v10, :cond_b

    .line 509
    new-instance v0, Landroid/webkitsec/HtmlComposerInputConnection;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;I)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    .line 513
    :goto_1
    new-instance v0, Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$HCWHandler;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    .line 515
    const-string/jumbo v0, "tablet"

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 516
    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 523
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v7, :cond_3

    .line 524
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/View;->setHoverPopupType(I)V

    .line 525
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 526
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    .line 527
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mResizingHoverImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v1, Landroid/webkitsec/HtmlComposerView$2;

    invoke-direct {v1, p0}, Landroid/webkitsec/HtmlComposerView$2;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 561
    :cond_3
    return-void

    .line 482
    :cond_4
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5

    .line 483
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XXFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 484
    :cond_5
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_6

    .line 485
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 486
    :cond_6
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-nez v0, :cond_7

    .line 487
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->FAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 488
    :cond_7
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const v1, 0x3faa6666

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const v1, 0x3faa6667

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    .line 489
    :cond_8
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->SFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 490
    :cond_9
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    .line 491
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 492
    :cond_a
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->CLOSE:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 511
    :cond_b
    new-instance v0, Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    goto/16 :goto_1

    .line 519
    :cond_c
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    goto/16 :goto_2
.end method

.method static synthetic access$000(Landroid/webkitsec/HtmlComposerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/HtmlComposerView;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$302(Landroid/webkitsec/HtmlComposerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkitsec/HtmlComposerView;)Landroid/webkitsec/HtmlComposerInputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkitsec/HtmlComposerView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImageWithResizing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/webkitsec/HtmlComposerView;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$602(Landroid/webkitsec/HtmlComposerView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 148
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$700(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkitsec/HtmlComposerView;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    return-void
.end method

.method static synthetic access$900(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private canSelectAll()Z
    .locals 1

    .prologue
    .line 4244
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4245
    const/4 v0, 0x1

    .line 4248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearCursorOrRangeSelection()V
    .locals 2

    .prologue
    .line 4252
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4258
    :cond_0
    :goto_0
    return-void

    .line 4254
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4255
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4256
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 4262
    const/4 v3, 0x0

    .line 4263
    .local v3, "source":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 4265
    .local v5, "target":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4266
    .end local v3    # "source":Ljava/io/FileInputStream;
    .local v4, "source":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4268
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .local v6, "target":Ljava/io/FileOutputStream;
    const/16 v8, 0x800

    :try_start_2
    new-array v0, v8, [B

    .line 4269
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 4270
    .local v2, "i":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 4271
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 4274
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 4275
    .end local v4    # "source":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4283
    if-eqz v3, :cond_0

    .line 4284
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 4286
    :cond_0
    if-eqz v5, :cond_1

    .line 4287
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 4291
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return v7

    .line 4273
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v8, 0x1

    .line 4283
    if-eqz v4, :cond_3

    .line 4284
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 4286
    :cond_3
    if-eqz v6, :cond_4

    .line 4287
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    move v7, v8

    .line 4273
    goto :goto_2

    .line 4277
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 4278
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4283
    if-eqz v3, :cond_5

    .line 4284
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 4286
    :cond_5
    if-eqz v5, :cond_1

    .line 4287
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 4289
    :catch_2
    move-exception v1

    .line 4290
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 4282
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 4283
    :goto_5
    if-eqz v3, :cond_6

    .line 4284
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4286
    :cond_6
    if-eqz v5, :cond_7

    .line 4287
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 4282
    :cond_7
    throw v8

    .line 4289
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 4290
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 4291
    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_2

    .line 4289
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_4
    move-exception v1

    goto :goto_4

    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_4

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v1

    goto :goto_4

    .line 4282
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_5

    .line 4277
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3

    .line 4274
    :catch_a
    move-exception v1

    goto :goto_1

    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private createToolTip()V
    .locals 2

    .prologue
    .line 2686
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 2687
    new-instance v0, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;-><init>(Landroid/webkitsec/HtmlComposerView;Landroid/content/Context;Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 2690
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 2691
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2692
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 2694
    :cond_1
    return-void
.end method

.method private displaySoftKeyboardForHtmlComposer()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 4298
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4301
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 4303
    .local v1, "showIme":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 4304
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4306
    :cond_0
    return-void

    .end local v1    # "showIme":Z
    :cond_1
    move v1, v2

    .line 4301
    goto :goto_0
.end method

.method private drawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "outLinePath"    # Landroid/graphics/Path;
    .param p3, "handlesPath"    # Landroid/graphics/Path;

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    .line 6250
    iget-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    if-eqz v7, :cond_0

    .line 6296
    :goto_0
    return-void

    .line 6253
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 6254
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6255
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6256
    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6258
    const/4 v7, 0x0

    const/16 v8, 0x8a

    const/16 v9, 0xff

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 6259
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6261
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 6262
    .local v3, "re":Landroid/graphics/RectF;
    invoke-virtual {p2, v3, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6265
    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v8, v3, Landroid/graphics/RectF;->right:F

    iget v9, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v5, v7

    .line 6266
    .local v5, "xcenter":I
    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    iget v9, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 6267
    .local v6, "ycenter":I
    const/16 v0, 0x14

    .line 6268
    .local v0, "delta":I
    const/4 v1, 0x0

    .line 6269
    .local v1, "handle":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10803f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6270
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 6272
    iget v7, v3, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    iget v8, v3, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v3, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    iget v10, v3, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6273
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6274
    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v3, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6275
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6276
    iget v7, v3, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v3, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6277
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6278
    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    iget v8, v3, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    iget v9, v3, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    iget v10, v3, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6279
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6281
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10803f1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6282
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 6284
    sub-int v7, v5, v0

    iget v8, v3, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    add-int v9, v5, v0

    iget v10, v3, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6285
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6286
    sub-int v7, v5, v0

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    sub-int/2addr v8, v0

    add-int v9, v5, v0

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    add-int/2addr v10, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6287
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6288
    iget v7, v3, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    sub-int v8, v6, v0

    iget v9, v3, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    add-int v10, v6, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6289
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6290
    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    sub-int/2addr v7, v0

    sub-int v8, v6, v0

    iget v9, v3, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    add-int/2addr v9, v0

    add-int v10, v6, v0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6291
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6293
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 6294
    .local v4, "reh":Landroid/graphics/RectF;
    invoke-virtual {p3, v4, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0
.end method

.method private drawWebImageSelectionControl(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6228
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 6231
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v0, v1}, Landroid/webkitsec/HtmlComposerView;->drawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 6232
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6239
    :goto_0
    return-void

    .line 6236
    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "DrawImageSelectionControls  mImageCopyInfo is null and invalidate()  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6237
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private getCurrentOutlineBottom()F
    .locals 1

    .prologue
    .line 5173
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method private getCurrentOutlineHeight()I
    .locals 2

    .prologue
    .line 5165
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentOutlineRight()F
    .locals 1

    .prologue
    .line 5177
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method private getCurrentOutlineWidth()I
    .locals 2

    .prologue
    .line 5169
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getDegreeOfRotatedImage(Landroid/net/Uri;)I
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4368
    const/4 v8, 0x0

    .line 4370
    .local v8, "degree":I
    if-nez p1, :cond_0

    move v9, v8

    .line 4404
    .end local v8    # "degree":I
    .local v9, "degree":I
    :goto_0
    return v9

    .line 4372
    .end local v9    # "degree":I
    .restart local v8    # "degree":I
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 4374
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    const-string/jumbo v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4375
    const/4 v7, 0x0

    .line 4378
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4379
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4380
    const-string/jumbo v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 4384
    :cond_1
    if-eqz v7, :cond_2

    .line 4385
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    move v9, v8

    .line 4404
    .end local v8    # "degree":I
    .restart local v9    # "degree":I
    goto :goto_0

    .line 4384
    .end local v9    # "degree":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "degree":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 4385
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4384
    :cond_3
    throw v0

    .line 4388
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4390
    :try_start_1
    new-instance v11, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 4391
    .local v11, "exif":Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .line 4392
    .local v12, "exifOrientation":I
    const/4 v0, 0x6

    if-ne v12, v0, :cond_5

    .line 4393
    const/16 v8, 0x5a

    goto :goto_2

    .line 4394
    :cond_5
    const/4 v0, 0x3

    if-ne v12, v0, :cond_6

    .line 4395
    const/16 v8, 0xb4

    goto :goto_2

    .line 4396
    :cond_6
    const/16 v0, 0x8

    if-ne v12, v0, :cond_2

    .line 4397
    const/16 v8, 0x10e

    goto :goto_2

    .line 4399
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .end local v12    # "exifOrientation":I
    :catch_0
    move-exception v10

    .line 4400
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 4382
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    .line 4384
    if-eqz v7, :cond_2

    goto :goto_1
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 4320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4321
    .local v3, "bufer":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 4322
    .local v7, "fstream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 4323
    .local v9, "in":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 4327
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4329
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .local v8, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4330
    .end local v9    # "in":Ljava/io/DataInputStream;
    .local v10, "in":Ljava/io/DataInputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4333
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "strLine":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 4335
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 4347
    .end local v11    # "strLine":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .line 4348
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .local v6, "ep":Ljava/lang/Exception;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " HtmlComposerView "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4349
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4352
    if-eqz v7, :cond_0

    .line 4353
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 4354
    :cond_0
    if-eqz v9, :cond_1

    .line 4355
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    .line 4356
    :cond_1
    if-eqz v1, :cond_2

    .line 4357
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4360
    .end local v6    # "ep":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v4

    .line 4337
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "strLine":Ljava/lang/String;
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4339
    .local v4, "data":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 4341
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x1040b64

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x1040b65

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 4342
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4352
    :cond_4
    if-eqz v8, :cond_5

    .line 4353
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 4354
    :cond_5
    if-eqz v10, :cond_6

    .line 4355
    invoke-virtual {v10}, Ljava/io/FilterInputStream;->close()V

    .line 4356
    :cond_6
    if-eqz v2, :cond_7

    .line 4357
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .line 4345
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 4351
    .end local v4    # "data":Ljava/lang/String;
    .end local v11    # "strLine":Ljava/lang/String;
    :catchall_0
    move-exception v12

    .line 4352
    :goto_3
    if-eqz v7, :cond_8

    .line 4353
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 4354
    :cond_8
    if-eqz v9, :cond_9

    .line 4355
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    .line 4356
    :cond_9
    if-eqz v1, :cond_a

    .line 4357
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 4351
    :cond_a
    throw v12

    .line 4358
    :catch_1
    move-exception v5

    .line 4359
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4360
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    :goto_4
    goto :goto_2

    .line 4358
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "ep":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 4359
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4360
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    goto :goto_4

    .line 4358
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ep":Ljava/lang/Exception;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "strLine":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 4359
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4360
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v4    # "data":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 4351
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v11    # "strLine":Ljava/lang/String;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v12

    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v12

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 4347
    :catch_4
    move-exception v6

    goto/16 :goto_1

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v6

    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private getSelectedImageUri()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4409
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4426
    :cond_0
    :goto_0
    return-object v2

    .line 4411
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4412
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 4413
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4414
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x229

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4419
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4424
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4426
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 4416
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4424
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 4420
    :catch_0
    move-exception v0

    .line 4421
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private getSelectionOffsetImage()V
    .locals 2

    .prologue
    .line 4431
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4436
    :cond_0
    :goto_0
    return-void

    .line 4433
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4434
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 4442
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4452
    :cond_0
    :goto_0
    return-void

    .line 4444
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    new-instance v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 4445
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 4446
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 4447
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 4449
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4450
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "imageoutLinePath"    # Landroid/graphics/Path;
    .param p3, "imagehandlesPath"    # Landroid/graphics/Path;

    .prologue
    .line 4458
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4471
    :cond_0
    :goto_0
    return-void

    .line 4460
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    new-instance v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 4461
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 4462
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 4463
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 4465
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p2, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    .line 4466
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p3, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    .line 4468
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4469
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getTargetView()Landroid/webkitsec/HtmlComposerView;
    .locals 1

    .prologue
    .line 4475
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    return-object v0
.end method

.method private handleBottomMiddleHandleDrag(II)V
    .locals 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 5619
    const/4 v0, 0x0

    .line 5620
    .local v0, "deltaX":I
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 5622
    .local v1, "deltaY":I
    if-gez v1, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 5623
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v2, :cond_0

    .line 5635
    :goto_0
    return-void

    .line 5624
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 5625
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    .line 5628
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5629
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5630
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5631
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5632
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5634
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0
.end method

.method private handleLeftBottomHandleDrag(II)V
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x41200000    # 10.0f

    .line 5407
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 5408
    .local v2, "deltaX":I
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 5409
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5410
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5411
    .local v1, "deltaValueY":I
    const/4 v4, 0x1

    .line 5412
    .local v4, "signX":I
    const/4 v5, 0x1

    .line 5414
    .local v5, "signY":I
    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 5415
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 5416
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v6

    .line 5417
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5419
    :cond_0
    if-gez v3, :cond_3

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 5420
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v6, :cond_2

    .line 5452
    :cond_1
    :goto_0
    return-void

    .line 5421
    :cond_2
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 5422
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v3, v6

    .line 5423
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5426
    :cond_3
    if-lt v0, v10, :cond_1

    if-lt v1, v10, :cond_1

    .line 5428
    if-gez v2, :cond_4

    .line 5429
    const/4 v4, -0x1

    .line 5430
    :cond_4
    if-gez v3, :cond_5

    .line 5431
    const/4 v5, -0x1

    .line 5432
    :cond_5
    if-eq v4, v5, :cond_1

    .line 5435
    if-ge v0, v1, :cond_6

    .line 5436
    int-to-float v6, v0

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v3, v6, v5

    .line 5443
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5444
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5447
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5448
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5449
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5450
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5451
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 5439
    :cond_6
    int-to-float v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v2, v6, v4

    goto :goto_1
.end method

.method private handleLeftMiddleHandleDrag(II)V
    .locals 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 5682
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 5683
    .local v0, "deltaX":I
    const/4 v1, 0x0

    .line 5685
    .local v1, "deltaY":I
    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 5686
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 5687
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v0

    .line 5690
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5691
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5692
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5693
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5694
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5695
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5696
    return-void
.end method

.method private handleLeftTopHandleDrag(II)V
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x41200000    # 10.0f

    .line 5455
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 5456
    .local v2, "deltaX":I
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 5457
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5458
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5459
    .local v1, "deltaValueY":I
    const/4 v4, 0x1

    .line 5460
    .local v4, "signX":I
    const/4 v5, 0x1

    .line 5462
    .local v5, "signY":I
    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 5463
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 5464
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v6, v2

    .line 5465
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5467
    :cond_0
    if-lez v3, :cond_1

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 5468
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 5469
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v6, v3

    .line 5470
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5473
    :cond_1
    if-lt v0, v10, :cond_2

    if-ge v1, v10, :cond_3

    .line 5499
    :cond_2
    :goto_0
    return-void

    .line 5475
    :cond_3
    if-gez v2, :cond_4

    .line 5476
    const/4 v4, -0x1

    .line 5477
    :cond_4
    if-gez v3, :cond_5

    .line 5478
    const/4 v5, -0x1

    .line 5479
    :cond_5
    if-ne v4, v5, :cond_2

    .line 5482
    if-ge v0, v1, :cond_6

    .line 5483
    int-to-float v6, v0

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v3, v6, v5

    .line 5490
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5491
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5494
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5495
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5496
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5497
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5498
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 5486
    :cond_6
    int-to-float v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v2, v6, v4

    goto :goto_1
.end method

.method private handleNavKeys(I)V
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4479
    packed-switch p1, :pswitch_data_0

    .line 4611
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    .line 4613
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 4615
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 4616
    return-void

    .line 4481
    :pswitch_0
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_3

    .line 4482
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4483
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_1

    .line 4484
    const-string v2, "MoveWordLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4488
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4489
    .local v1, "selectionType":I
    if-ne v6, v1, :cond_2

    .line 4490
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4491
    .local v0, "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4492
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4493
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4494
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4495
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 4486
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_1
    const-string v2, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 4496
    .restart local v1    # "selectionType":I
    :cond_2
    if-nez v1, :cond_0

    .line 4497
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    .line 4501
    .end local v1    # "selectionType":I
    :cond_3
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_4

    .line 4502
    const-string v2, "MoveWordLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4507
    :goto_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    .line 4504
    :cond_4
    const-string v2, "MoveLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 4512
    :pswitch_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_7

    .line 4513
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4514
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_5

    .line 4515
    const-string v2, "MoveWordRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4519
    :goto_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4520
    .restart local v1    # "selectionType":I
    if-ne v6, v1, :cond_6

    .line 4521
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4522
    .restart local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4523
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4524
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4525
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4526
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 4517
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_5
    const-string v2, "MoveRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 4527
    .restart local v1    # "selectionType":I
    :cond_6
    if-nez v1, :cond_0

    .line 4528
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4532
    .end local v1    # "selectionType":I
    :cond_7
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_8

    .line 4533
    const-string v2, "MoveWordRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4537
    :goto_4
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4535
    :cond_8
    const-string v2, "MoveRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 4542
    :pswitch_2
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_b

    .line 4543
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4544
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_9

    .line 4545
    const-string v2, "MoveToBeginningOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4546
    const-string v2, "MoveBackwardAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4547
    const-string v2, "MoveToBeginningOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4551
    :goto_5
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4552
    .restart local v1    # "selectionType":I
    if-ne v6, v1, :cond_a

    .line 4553
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4554
    .restart local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4555
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4556
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4557
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4558
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 4549
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_9
    const-string v2, "MoveUpAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 4559
    .restart local v1    # "selectionType":I
    :cond_a
    if-nez v1, :cond_0

    .line 4560
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4564
    .end local v1    # "selectionType":I
    :cond_b
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_c

    .line 4565
    const-string v2, "MoveToBeginningOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4566
    const-string v2, "MoveBackward"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4567
    const-string v2, "MoveToBeginningOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4572
    :goto_6
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4569
    :cond_c
    const-string v2, "MoveUp"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 4577
    :pswitch_3
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_f

    .line 4578
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4579
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_d

    .line 4580
    const-string v2, "MoveToEndOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4581
    const-string v2, "MoveForwardAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4585
    :goto_7
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4586
    .restart local v1    # "selectionType":I
    if-ne v6, v1, :cond_e

    .line 4587
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4588
    .restart local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4589
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4590
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4591
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4592
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 4583
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_d
    const-string v2, "MoveDownAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .line 4593
    .restart local v1    # "selectionType":I
    :cond_e
    if-nez v1, :cond_0

    .line 4594
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4598
    .end local v1    # "selectionType":I
    :cond_f
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_10

    .line 4599
    const-string v2, "MoveToEndOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4600
    const-string v2, "MoveForward"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4604
    :goto_8
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4602
    :cond_10
    const-string v2, "MoveDown"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    .line 4479
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRightBottomHandleDrag(II)V
    .locals 13
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v12, 0xa

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v10, 0x41200000    # 10.0f

    .line 5502
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v8

    .line 5503
    .local v2, "deltaX":I
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v8

    .line 5504
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5505
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5506
    .local v1, "deltaValueY":I
    const/4 v6, 0x1

    .line 5507
    .local v6, "signX":I
    const/4 v7, 0x1

    .line 5509
    .local v7, "signY":I
    if-gez v2, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 5510
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5511
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5512
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5514
    :cond_0
    if-gez v3, :cond_3

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_3

    .line 5515
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v8, :cond_2

    .line 5558
    :cond_1
    :goto_0
    return-void

    .line 5516
    :cond_2
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 5517
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v8, v3

    .line 5518
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5520
    :cond_3
    if-lez v2, :cond_4

    if-lez v3, :cond_4

    .line 5521
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5522
    .local v5, "localVisibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5524
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 5525
    .local v4, "imageHandlerWidth":I
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v2

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 5526
    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5527
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5531
    .end local v4    # "imageHandlerWidth":I
    .end local v5    # "localVisibleRect":Landroid/graphics/Rect;
    :cond_4
    if-lt v0, v12, :cond_1

    if-lt v1, v12, :cond_1

    .line 5533
    if-gez v2, :cond_5

    .line 5534
    const/4 v6, -0x1

    .line 5535
    :cond_5
    if-gez v3, :cond_6

    .line 5536
    const/4 v7, -0x1

    .line 5537
    :cond_6
    if-ne v6, v7, :cond_1

    .line 5540
    if-ge v0, v1, :cond_7

    .line 5541
    int-to-float v8, v0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v3, v8, v7

    .line 5548
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5549
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5553
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5554
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5555
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5556
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5557
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto/16 :goto_0

    .line 5544
    :cond_7
    int-to-float v8, v1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v2, v8, v6

    goto :goto_1
.end method

.method private handleRightMiddleHandleDrag(II)V
    .locals 8
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x41200000    # 10.0f

    .line 5656
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v0, p1, v4

    .line 5657
    .local v0, "deltaX":I
    const/4 v1, 0x0

    .line 5659
    .local v1, "deltaY":I
    if-gez v0, :cond_1

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 5660
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 5661
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v4, v0

    .line 5673
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5674
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5675
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5676
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5677
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5678
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5679
    return-void

    .line 5662
    :cond_1
    if-lez v0, :cond_0

    .line 5663
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 5664
    .local v3, "localVisibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5666
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 5667
    .local v2, "imageHandlerWidth":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 5668
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 5669
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v4, v0

    goto :goto_0
.end method

.method private handleRightTopHandleDrag(II)V
    .locals 13
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v12, 0xa

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v10, 0x41200000    # 10.0f

    .line 5561
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v8

    .line 5562
    .local v2, "deltaX":I
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v8

    .line 5563
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5564
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5565
    .local v1, "deltaValueY":I
    const/4 v6, 0x1

    .line 5566
    .local v6, "signX":I
    const/4 v7, 0x1

    .line 5568
    .local v7, "signY":I
    if-gez v2, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 5569
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5570
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5571
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5573
    :cond_0
    if-lez v3, :cond_1

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 5574
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 5575
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v8, v3

    .line 5576
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5578
    :cond_1
    if-lez v2, :cond_2

    if-gez v3, :cond_2

    .line 5579
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5580
    .local v5, "localVisibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5582
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 5583
    .local v4, "imageHandlerWidth":I
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v2

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 5584
    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5585
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5589
    .end local v4    # "imageHandlerWidth":I
    .end local v5    # "localVisibleRect":Landroid/graphics/Rect;
    :cond_2
    if-lt v0, v12, :cond_3

    if-ge v1, v12, :cond_4

    .line 5615
    :cond_3
    :goto_0
    return-void

    .line 5591
    :cond_4
    if-gez v2, :cond_5

    .line 5592
    const/4 v6, -0x1

    .line 5593
    :cond_5
    if-gez v3, :cond_6

    .line 5594
    const/4 v7, -0x1

    .line 5595
    :cond_6
    if-eq v6, v7, :cond_3

    .line 5598
    if-ge v0, v1, :cond_7

    .line 5599
    int-to-float v8, v0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v3, v8, v7

    .line 5606
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5607
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5610
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5611
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5612
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5613
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5614
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 5602
    :cond_7
    int-to-float v8, v1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v2, v8, v6

    goto :goto_1
.end method

.method private handleTopMiddleHandleDrag(II)V
    .locals 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 5638
    const/4 v0, 0x0

    .line 5639
    .local v0, "deltaX":I
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 5641
    .local v1, "deltaY":I
    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 5642
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 5643
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    .line 5646
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5647
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5648
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5649
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5650
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5652
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5653
    return-void
.end method

.method private handle_ACTION_CANCEL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5393
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 5394
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 5395
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 5396
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 5397
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 5398
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 5399
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 5400
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 5402
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    .line 5403
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5404
    return-void
.end method

.method private handle_ACTION_DOWN(IIII)V
    .locals 4
    .param p1, "contentX"    # I
    .param p2, "contentY"    # I
    .param p3, "positionX"    # I
    .param p4, "positionY"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x1

    .line 5182
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isOutLineRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5184
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"If outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5190
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5191
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5192
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 5193
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5195
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5196
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5197
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5199
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5200
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5202
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 5295
    :goto_1
    return-void

    .line 5187
    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"else outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5203
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5204
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5205
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5206
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 5207
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5209
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5210
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5211
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5213
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5214
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5216
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    .line 5217
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5218
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5219
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5220
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 5221
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5222
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5223
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5224
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5226
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5227
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5229
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    .line 5230
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5231
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5232
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5233
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 5235
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5236
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5238
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5239
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5240
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5241
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5242
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 5243
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5244
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5245
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5246
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5248
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5249
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5251
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5252
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isBottomMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5253
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5254
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5255
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 5256
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5258
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5259
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5260
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5262
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5263
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5265
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5266
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isTopMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5267
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5268
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5269
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 5270
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5271
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5272
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5273
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5275
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5276
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5278
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5279
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5280
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5281
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5282
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 5283
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5284
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5285
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5286
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5288
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5289
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5291
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5293
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1
.end method

.method private handle_ACTION_MOVE(II)V
    .locals 3
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v2, 0x1

    .line 5298
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v2, :cond_5

    .line 5300
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightBottomHandleDrag(II)V

    .line 5345
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-eqz v0, :cond_2

    .line 5346
    :cond_1
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5348
    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eqz v0, :cond_4

    .line 5349
    :cond_3
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5350
    :cond_4
    return-void

    .line 5302
    :cond_5
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v2, :cond_6

    .line 5304
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftBottomHandleDrag(II)V

    .line 5305
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5306
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    .line 5308
    :cond_6
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v2, :cond_7

    .line 5310
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftTopHandleDrag(II)V

    .line 5311
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5312
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    .line 5314
    :cond_7
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v2, :cond_8

    .line 5316
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightTopHandleDrag(II)V

    .line 5317
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5318
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 5320
    :cond_8
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_9

    .line 5322
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftMiddleHandleDrag(II)V

    .line 5323
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5324
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 5326
    :cond_9
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_a

    .line 5328
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleTopMiddleHandleDrag(II)V

    .line 5329
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5330
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 5332
    :cond_a
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_b

    .line 5334
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightMiddleHandleDrag(II)V

    .line 5335
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5336
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 5338
    :cond_b
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_0

    .line 5340
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleBottomMiddleHandleDrag(II)V

    .line 5341
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5342
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0
.end method

.method private handle_ACTION_UP(II)V
    .locals 5
    .param p1, "rawX"    # I
    .param p2, "rawY"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5353
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5354
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5355
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 5357
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v1, :cond_2

    .line 5360
    :cond_0
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 5361
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 5362
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 5363
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 5364
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 5365
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 5366
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 5368
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    .line 5369
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5370
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5371
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5372
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 5375
    :cond_1
    invoke-direct {p0, v3, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5376
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5379
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5380
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5383
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5384
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5385
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5386
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    .line 5387
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5390
    :cond_2
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 2696
    const-string v0, "HtmlComposerView"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2699
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2700
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 2702
    :cond_0
    return-void
.end method

.method private hideSoftKeyboardForHtmlComposer()V
    .locals 3

    .prologue
    .line 4619
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4620
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4621
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4623
    :cond_0
    return-void
.end method

.method private imageCopy(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 4626
    if-eqz p1, :cond_0

    .line 4627
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4628
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4630
    :cond_0
    return-void
.end method

.method private insertImageContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 4633
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4634
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4635
    :cond_0
    return-void
.end method

.method private insertImageWithResizing(Ljava/lang/String;)Z
    .locals 29
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 4638
    const/16 v19, 0x0

    .line 4639
    .local v19, "htmlFragment":Ljava/lang/String;
    const/16 v26, 0x0

    .line 4640
    .local v26, "result":Z
    const/4 v15, 0x0

    .line 4643
    .local v15, "degree":I
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4645
    .local v21, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 4649
    .local v5, "imageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkitsec/HtmlComposerView;->getDegreeOfRotatedImage(Landroid/net/Uri;)I

    move-result v15

    .line 4651
    const/4 v13, 0x0

    .line 4652
    .local v13, "absoluteFilePath":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4653
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 4679
    :cond_1
    :goto_0
    if-nez v13, :cond_7

    const/4 v4, 0x0

    .line 4827
    :goto_1
    return v4

    .line 4654
    :cond_2
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "content"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4655
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "picasa"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "sns"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4656
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4658
    .local v14, "c":Landroid/database/Cursor;
    if-nez v14, :cond_3

    .line 4659
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "return null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4663
    :cond_3
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eq v4, v7, :cond_4

    .line 4664
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "return 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4669
    :catchall_0
    move-exception v4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    .line 4667
    :cond_4
    :try_start_1
    const-string v4, "_data"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 4669
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4672
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertImage file_scheme: conten, filePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4675
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "HtmlComposerView"

    const-string v7, "Uri is not either file or content scheme"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4676
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 4681
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### absoluteFilePath :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4684
    .local v16, "dstFilePath":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4686
    .local v20, "mFile":Ljava/io/File;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4687
    .local v24, "originalFile":Ljava/io/File;
    const-wide/32 v7, 0x100000

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gtz v4, :cond_9

    .line 4689
    const/4 v4, 0x4

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4690
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### originalFile.length() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    :cond_9
    const/4 v6, 0x0

    .line 4696
    .local v6, "src":Landroid/graphics/Bitmap;
    :try_start_2
    move-object/from16 v0, v21

    invoke-static {v13, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 4708
    if-nez v6, :cond_d

    :cond_a
    :goto_2
    move/from16 v4, v26

    goto/16 :goto_1

    .line 4697
    :catch_0
    move-exception v17

    .line 4698
    .local v17, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    if-eqz v4, :cond_b

    .line 4699
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4702
    :cond_b
    const/16 v20, 0x0

    .line 4703
    const/16 v24, 0x0

    .line 4704
    const/16 v21, 0x0

    .line 4708
    if-eqz v6, :cond_a

    move/from16 v4, v26

    .line 4706
    goto/16 :goto_1

    .line 4708
    .end local v17    # "e":Ljava/lang/OutOfMemoryError;
    :cond_c
    throw v4

    .line 4711
    :cond_d
    if-eqz v15, :cond_12

    .line 4712
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 4713
    .local v11, "m":Landroid/graphics/Matrix;
    int-to-float v4, v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v11, v4, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4715
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    .line 4727
    if-nez v6, :cond_11

    :cond_e
    :goto_3
    move/from16 v4, v26

    goto/16 :goto_1

    .line 4716
    :catch_1
    move-exception v17

    .line 4717
    .restart local v17    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    if-eqz v4, :cond_f

    .line 4718
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4721
    :cond_f
    const/16 v20, 0x0

    .line 4722
    const/16 v24, 0x0

    .line 4723
    const/16 v21, 0x0

    .line 4727
    if-eqz v6, :cond_e

    move/from16 v4, v26

    .line 4725
    goto/16 :goto_1

    .line 4727
    .end local v17    # "e":Ljava/lang/OutOfMemoryError;
    :cond_10
    throw v4

    .line 4730
    :cond_11
    if-eqz v15, :cond_12

    const/16 v4, 0xb4

    if-eq v15, v4, :cond_12

    .line 4731
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v27, v0

    .line 4732
    .local v27, "temp_value":I
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4733
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 4737
    .end local v11    # "m":Landroid/graphics/Matrix;
    .end local v27    # "temp_value":I
    :cond_12
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v4, :cond_13

    move/from16 v4, v26

    .line 4740
    goto/16 :goto_1

    .line 4743
    :cond_13
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    .line 4744
    .local v23, "originWidth":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    .line 4745
    .local v22, "originHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    if-gt v4, v7, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v28, v4, v7

    .line 4746
    .local v28, "width":I
    mul-int v4, v22, v28

    div-int v18, v4, v23

    .line 4748
    .local v18, "height":I
    const-wide/32 v7, 0x100000

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-lez v4, :cond_14

    if-eqz v15, :cond_1a

    .line 4749
    :cond_14
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Big Data"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    if-eqz v6, :cond_16

    .line 4754
    :try_start_6
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4756
    .local v25, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".jpg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".jpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_18

    .line 4758
    :cond_15
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4760
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    .line 4761
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4799
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    :cond_16
    :goto_5
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4800
    if-nez v19, :cond_1b

    move/from16 v4, v26

    goto/16 :goto_1

    .line 4745
    .end local v18    # "height":I
    .end local v28    # "width":I
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    goto :goto_4

    .line 4763
    .restart local v18    # "height":I
    .restart local v25    # "outStream":Ljava/io/FileOutputStream;
    .restart local v28    # "width":I
    :cond_18
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "png"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_19

    .line 4765
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4767
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    .line 4768
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    .line 4780
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v17

    .line 4781
    .local v17, "e":Ljava/io/FileNotFoundException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v4, v26

    .line 4782
    goto/16 :goto_1

    .line 4772
    .end local v17    # "e":Ljava/io/FileNotFoundException;
    .restart local v25    # "outStream":Ljava/io/FileOutputStream;
    :cond_19
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 4773
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/webkitsec/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v4, v7, :cond_16

    .line 4775
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move/from16 v4, v26

    .line 4776
    goto/16 :goto_1

    .line 4784
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v17

    .line 4785
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v4, v26

    .line 4786
    goto/16 :goto_1

    .line 4792
    .end local v17    # "e":Ljava/io/IOException;
    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/webkitsec/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v4, v7, :cond_16

    .line 4794
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v26

    .line 4795
    goto/16 :goto_1

    .line 4802
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_1c

    .line 4803
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    :cond_1c
    if-eqz v28, :cond_1f

    .line 4808
    move/from16 v0, v28

    move/from16 v1, v23

    if-le v0, v1, :cond_1d

    .line 4810
    move/from16 v28, v23

    .line 4811
    move/from16 v18, v22

    .line 4814
    :cond_1d
    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v4, v9

    float-to-double v9, v4

    cmpg-double v4, v7, v9

    if-gez v4, :cond_1e

    .line 4815
    mul-int/lit8 v4, v28, 0x64

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    div-float/2addr v4, v7

    float-to-int v0, v4

    move/from16 v28, v0

    .line 4816
    mul-int/lit8 v4, v18, 0x64

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    div-float/2addr v4, v7

    float-to-int v0, v4

    move/from16 v18, v0

    .line 4819
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    move-result v26

    :goto_6
    move/from16 v4, v26

    .line 4827
    goto/16 :goto_1

    .line 4823
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    move-result v26

    goto :goto_6

    .line 4708
    .end local v18    # "height":I
    .end local v22    # "originHeight":I
    .end local v23    # "originWidth":I
    .end local v28    # "width":I
    :catchall_1
    move-exception v4

    if-nez v6, :cond_c

    goto/16 :goto_2

    .line 4727
    .restart local v11    # "m":Landroid/graphics/Matrix;
    :catchall_2
    move-exception v4

    if-nez v6, :cond_10

    goto/16 :goto_3
.end method

.method private isBottomMiddleImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5868
    move v0, p1

    .line 5869
    .local v0, "positionX":I
    move v1, p2

    .line 5871
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5873
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5875
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5876
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    :cond_0
    const/4 v3, 0x1

    .line 5888
    :goto_0
    return v3

    .line 5882
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5884
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5885
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5888
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCursorAtBoundary(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 4831
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 4848
    :goto_0
    return v2

    .line 4833
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4834
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 4835
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4836
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x22c

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4841
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4846
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4848
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 4838
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4846
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 4842
    :catch_0
    move-exception v0

    .line 4843
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private isHoverPointWithinIconAreaForResizing(II)Z
    .locals 12
    .param p1, "contentX"    # I
    .param p2, "contentY"    # I

    .prologue
    const v11, 0x108069f

    const/4 v4, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v9, -0x1

    .line 4860
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v5, v6, :cond_3

    .line 4861
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 4862
    .local v1, "re":Landroid/graphics/RectF;
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4864
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing getX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    :cond_0
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHoverPointWithinIconAreaForResizing outLinePath re.left re.top re.right re.bottom "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    :cond_1
    const/16 v0, 0x28

    .line 4868
    .local v0, "delta":I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v2, v6

    .line 4869
    .local v2, "xCenter":I
    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    float-to-int v3, v6

    .line 4871
    .local v3, "yCenter":I
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 4873
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    :cond_2
    const v4, 0x10806a1

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4875
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4876
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    :goto_0
    move v4, v5

    .line 4929
    .end local v0    # "delta":I
    .end local v1    # "re":Landroid/graphics/RectF;
    .end local v2    # "xCenter":I
    .end local v3    # "yCenter":I
    :cond_3
    :goto_1
    return v4

    .line 4877
    .restart local v0    # "delta":I
    .restart local v1    # "re":Landroid/graphics/RectF;
    .restart local v2    # "xCenter":I
    .restart local v3    # "yCenter":I
    :cond_4
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_6

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    .line 4879
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Top"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4880
    :cond_5
    const v4, 0x10806a0

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4881
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4882
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto :goto_0

    .line 4883
    :cond_6
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_8

    .line 4885
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    :cond_7
    const v4, 0x10806a0

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4887
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4888
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto :goto_0

    .line 4889
    :cond_8
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_a

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_a

    .line 4891
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Bottom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    :cond_9
    const v4, 0x10806a1

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4893
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4894
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4895
    :cond_a
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_c

    add-int v6, v2, v0

    if-lt v6, p1, :cond_c

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_c

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_c

    .line 4897
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Top-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4898
    :cond_b
    iput v11, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4899
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4900
    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4901
    :cond_c
    sub-int v6, v2, v0

    if-gt v6, p1, :cond_e

    add-int v6, v2, v0

    if-lt v6, p1, :cond_e

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p2

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_e

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e

    .line 4903
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Bottom-Horizontal Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4904
    :cond_d
    iput v11, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4905
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4906
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4907
    :cond_e
    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_10

    iget v6, v1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_10

    add-int v6, v3, v0

    if-lt v6, p2, :cond_10

    .line 4909
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    :cond_f
    const v4, 0x10806a2

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4911
    iget v4, v1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4912
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4913
    :cond_10
    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    int-to-float v7, p1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_12

    iget v6, v1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    add-float/2addr v6, v7

    int-to-float v7, p1

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_12

    sub-int v6, v3, v0

    if-gt v6, p2, :cond_12

    add-int v6, v3, v0

    if-lt v6, p2, :cond_12

    .line 4915
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Vertical Center"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4916
    :cond_11
    const v4, 0x10806a2

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4917
    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4918
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_0

    .line 4920
    :cond_12
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 4921
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 4922
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto/16 :goto_1
.end method

.method private isInsertionAllowed(I)Z
    .locals 6
    .param p1, "insertionLength"    # I

    .prologue
    const/4 v3, 0x1

    .line 4934
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v4, :cond_1

    .line 4946
    :cond_0
    :goto_0
    return v3

    .line 4936
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->htmlLength()I

    move-result v0

    .line 4939
    .local v0, "curHtmlLength":I
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 4940
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 4941
    .local v1, "selectedText":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 4942
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 4943
    .local v2, "selectedTextLength":I
    sub-int/2addr v0, v2

    .line 4946
    .end local v1    # "selectedText":Ljava/lang/String;
    .end local v2    # "selectedTextLength":I
    :cond_2
    add-int v4, v0, p1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    if-le v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isOutLineRect(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5892
    move v0, p1

    .line 5893
    .local v0, "positionX":I
    move v1, p2

    .line 5895
    .local v1, "positionY":I
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5897
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 5898
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"If\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5901
    :cond_0
    const/4 v2, 0x1

    .line 5909
    :goto_0
    return v2

    .line 5904
    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 5905
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"else\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5909
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRightBottomImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5773
    move v0, p1

    .line 5774
    .local v0, "positionX":I
    move v1, p2

    .line 5776
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5778
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5780
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5781
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5784
    :cond_0
    const/4 v3, 0x1

    .line 5793
    :goto_0
    return v3

    .line 5787
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5789
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5790
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5793
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightMiddleImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5821
    move v0, p1

    .line 5822
    .local v0, "positionX":I
    move v1, p2

    .line 5824
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5825
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5827
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5828
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5831
    :cond_0
    const/4 v3, 0x1

    .line 5840
    :goto_0
    return v3

    .line 5834
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5836
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5837
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightTopImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5749
    move v0, p1

    .line 5750
    .local v0, "positionX":I
    move v1, p2

    .line 5752
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5754
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5756
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5757
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5760
    :cond_0
    const/4 v3, 0x1

    .line 5769
    :goto_0
    return v3

    .line 5763
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5765
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5766
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTopMiddleImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5844
    move v0, p1

    .line 5845
    .local v0, "positionX":I
    move v1, p2

    .line 5847
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5849
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5851
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5852
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    :cond_0
    const/4 v3, 0x1

    .line 5864
    :goto_0
    return v3

    .line 5858
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5860
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5861
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5864
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftBottomImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5726
    move v0, p1

    .line 5727
    .local v0, "positionX":I
    move v1, p2

    .line 5729
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5730
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5732
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5733
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    :cond_0
    const/4 v3, 0x1

    .line 5745
    :goto_0
    return v3

    .line 5739
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5741
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5742
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside  rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftMiddleImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5797
    move v0, p1

    .line 5798
    .local v0, "positionX":I
    move v1, p2

    .line 5800
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5802
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5804
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5805
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5808
    :cond_0
    const/4 v3, 0x1

    .line 5817
    :goto_0
    return v3

    .line 5811
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5813
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5814
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftTopImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5702
    move v0, p1

    .line 5703
    .local v0, "positionX":I
    move v1, p2

    .line 5705
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5707
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5709
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5710
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Top  PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    :cond_0
    const/4 v3, 0x1

    .line 5722
    :goto_0
    return v3

    .line 5716
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5718
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5719
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle left Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5722
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onAlignSelectedImageOutlineRectUpdate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5155
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    .line 5157
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 5158
    .local v0, "selectedImageRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_0

    .line 5159
    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 5161
    .end local v0    # "selectedImageRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private resetAndCreateOutlinePath()V
    .locals 6

    .prologue
    .line 5915
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5916
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5917
    return-void
.end method

.method private resetAndRecreateHandlesPath()V
    .locals 6

    .prologue
    .line 5920
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5921
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5922
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5924
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5925
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5927
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5928
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5930
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5931
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5933
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5934
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5936
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5937
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5939
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5940
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5942
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5943
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5944
    return-void
.end method

.method private restartIMEByHtmlComposerView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 4950
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4952
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4953
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4954
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4955
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4957
    :cond_0
    return-void
.end method

.method private selectedImageOutlineRectUpdate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 5146
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    if-eq v1, v3, :cond_0

    .line 5148
    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 5149
    .local v0, "selectedImageRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_0

    .line 5150
    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 5152
    .end local v0    # "selectedImageRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private sendEventToUpdateToolbar()V
    .locals 2

    .prologue
    .line 4984
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4985
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x501

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4986
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4987
    return-void
.end method

.method private setEditable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x207

    .line 4973
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4981
    :cond_0
    :goto_0
    return-void

    .line 4975
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4977
    if-eqz p1, :cond_2

    .line 4978
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 4980
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method private updateAllHandles()V
    .locals 0

    .prologue
    .line 5949
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftTopHandle()V

    .line 5950
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightTopHandle()V

    .line 5951
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftBottomHandle()V

    .line 5952
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightBottomHandle()V

    .line 5953
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateTopMiddleHandle()V

    .line 5954
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftMiddleHandle()V

    .line 5955
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateBottomMiddleHandle()V

    .line 5956
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightMiddleHandle()V

    .line 5957
    return-void
.end method

.method private updateBottomMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 6072
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6073
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6074
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6075
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->bm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6076
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->bm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6081
    :goto_0
    return-void

    .line 6079
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5007
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 5008
    .local v1, "outText":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 5010
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 5025
    :cond_0
    :goto_0
    return-void

    .line 5013
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5014
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5015
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 5016
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v2

    .line 5017
    .local v2, "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5018
    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5020
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5022
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5023
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5024
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method private updateLeftBottomHandle()V
    .locals 6

    .prologue
    .line 6000
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6002
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6003
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6004
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->lb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6005
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->lb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6010
    :goto_0
    return-void

    .line 6008
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateLeftMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 6068
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 6069
    return-void
.end method

.method private updateLeftTopHandle()V
    .locals 5

    .prologue
    .line 5995
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 5996
    return-void
.end method

.method private updateOutlineRectangle(II)V
    .locals 4
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v3, 0x1

    .line 6013
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v3, :cond_0

    .line 6014
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6015
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6017
    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v3, :cond_1

    .line 6018
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6019
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6021
    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v3, :cond_2

    .line 6022
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6023
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6025
    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v3, :cond_3

    .line 6026
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6027
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6029
    :cond_3
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_4

    .line 6030
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6031
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6033
    :cond_4
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_5

    .line 6034
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6035
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6037
    :cond_5
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_6

    .line 6038
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6039
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6041
    :cond_6
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_7

    .line 6042
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6043
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6045
    :cond_7
    return-void
.end method

.method private updateRegions()V
    .locals 10

    .prologue
    const/16 v5, 0x1e

    const/4 v7, 0x0

    .line 5961
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 5962
    .local v3, "localImagWidth":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    .line 5964
    .local v2, "localImagHeight":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v6

    .line 5965
    .local v1, "cropHandlerWidth":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v6

    .line 5967
    .local v0, "cropHandlerHeight":I
    add-int/lit8 v4, v1, 0x78

    if-le v3, v4, :cond_2

    move v4, v5

    :goto_0
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    .line 5968
    add-int/lit8 v4, v0, 0x78

    if-le v2, v4, :cond_3

    :goto_1
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    .line 5970
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    if-gez v4, :cond_0

    iput v7, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    .line 5971
    :cond_0
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    if-gez v4, :cond_1

    iput v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    .line 5973
    :cond_1
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5974
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5977
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5979
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5981
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5983
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5985
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5987
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5989
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5990
    return-void

    .line 5967
    :cond_2
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x4

    goto/16 :goto_0

    .line 5968
    :cond_3
    sub-int v4, v2, v0

    div-int/lit8 v5, v4, 0x4

    goto/16 :goto_1
.end method

.method private updateRightBottomHandle()V
    .locals 6

    .prologue
    .line 6048
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6049
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6050
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6051
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6052
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6057
    :goto_0
    return-void

    .line 6055
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateRightMiddleHandle()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 6084
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 6085
    return-void
.end method

.method private updateRightTopHandle()V
    .locals 5

    .prologue
    .line 6060
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 6061
    return-void
.end method

.method private updateTopMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 6088
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6089
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6090
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6091
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6092
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6097
    :goto_0
    return-void

    .line 6095
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateactionbar()V
    .locals 2

    .prologue
    .line 5000
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5004
    :cond_0
    :goto_0
    return-void

    .line 5002
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5003
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public DoClearImageSelection()V
    .locals 2

    .prologue
    .line 3070
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    .line 3072
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 3075
    :cond_0
    return-void
.end method

.method public GetLongPressForActioinPopup()Z
    .locals 1

    .prologue
    .line 6178
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    return v0
.end method

.method public HtmlComposerDrawContent(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 6206
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    if-nez v1, :cond_0

    .line 6208
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 6209
    .local v7, "normalCursorRect":Landroid/graphics/Rect;
    if-eqz v7, :cond_0

    .line 6210
    new-instance v6, Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xf

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0xf

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6211
    .local v6, "imageCursorRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6212
    .local v0, "cursorPath":Landroid/graphics/Path;
    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 6213
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 6214
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 6215
    .local v8, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6216
    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6221
    .end local v0    # "cursorPath":Landroid/graphics/Path;
    .end local v6    # "imageCursorRect":Landroid/graphics/Rect;
    .end local v7    # "normalCursorRect":Landroid/graphics/Rect;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 6222
    const-string v1, "HtmlComposerView"

    const-string v2, "drawWebImageSelectionControl is being called "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6223
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->drawWebImageSelectionControl(Landroid/graphics/Canvas;)V

    .line 6225
    :cond_1
    return-void
.end method

.method public IsWordMisspelledAtPosition(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3115
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;->IsWordMisspelledAtPosition(II)Z

    move-result v0

    return v0
.end method

.method public MoveCursorRight()V
    .locals 2

    .prologue
    .line 3755
    const-string v0, "MoveRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3756
    return-void
.end method

.method public SendInitComposing()V
    .locals 2

    .prologue
    .line 4140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4141
    .local v0, "imeBroadCast":Landroid/content/Intent;
    const-string v1, "imeAction:initComposing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4143
    return-void
.end method

.method public SetContextMenuVisible(Z)V
    .locals 0
    .param p1, "_visible"    # Z

    .prologue
    .line 4070
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 4071
    return-void
.end method

.method public SetLongPressForActioinPopup(Z)V
    .locals 0
    .param p1, "_set"    # Z

    .prologue
    .line 6182
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6183
    return-void
.end method

.method public UpdateRichTextToolbar(Z)V
    .locals 2
    .param p1, "isClear"    # Z

    .prologue
    const/4 v1, 0x1

    .line 4228
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    if-eqz v0, :cond_1

    .line 4229
    if-eq p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v0, v1, :cond_2

    .line 4230
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    .line 4237
    :cond_1
    :goto_0
    return-void

    .line 4231
    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    if-ne v0, v1, :cond_3

    .line 4232
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0

    .line 4234
    :cond_3
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 6109
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    .line 6110
    return-void
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 2835
    sget-object v0, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    .line 2836
    return-void
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 2839
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2840
    const/4 v0, 0x1

    .line 2843
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 2847
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2848
    const/4 v0, 0x1

    .line 2851
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 2855
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2856
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2857
    const/4 v0, 0x1

    .line 2860
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2917
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2934
    :cond_0
    :goto_0
    return v3

    .line 2919
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2920
    .local v0, "canRedo":Ljava/lang/Boolean;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2921
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2922
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2923
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2928
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2933
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2934
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2925
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2933
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2929
    :catch_0
    move-exception v1

    .line 2930
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public canUndo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2938
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2956
    :cond_0
    :goto_0
    return v3

    .line 2940
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2941
    .local v0, "canUndo":Ljava/lang/Boolean;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2942
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2943
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2944
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2954
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2956
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2946
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2954
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2950
    :catch_0
    move-exception v1

    .line 2951
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public changeFontBackColorForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontColor"    # Ljava/lang/String;

    .prologue
    .line 2134
    const-string v0, "BackColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2135
    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontColor"    # Ljava/lang/String;

    .prologue
    .line 2138
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2139
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    .line 2142
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2143
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2144
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2145
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2146
    return-void
.end method

.method public changeFontSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontSize"    # Ljava/lang/String;

    .prologue
    .line 2156
    const-string v0, "FontValue"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(I)V

    .line 2158
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontSize"    # Ljava/lang/String;

    .prologue
    .line 2149
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2150
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2151
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2152
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2153
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 2960
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2977
    :cond_0
    :goto_0
    return v2

    .line 2962
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2963
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 2964
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2965
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2970
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2975
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2977
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 2967
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 2975
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2971
    :catch_0
    move-exception v0

    .line 2972
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public cleanTempResources()V
    .locals 2

    .prologue
    .line 2981
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->deleteTempDirectory()V

    .line 2983
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2986
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableBidirection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2987
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2988
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 2990
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 2992
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2993
    return-void
.end method

.method public clearComposingSelection()V
    .locals 4

    .prologue
    .line 2995
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2996
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 2997
    :cond_0
    return-void
.end method

.method public clearImageSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 6310
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  clearImageSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6312
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 6313
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  clearImageSelection  Clearing selection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6314
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6315
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 6316
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6317
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6318
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6320
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 6321
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 6322
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 6323
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 6324
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 6325
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 6326
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 6327
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 6329
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    .line 6330
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 6332
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    .line 6334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 6336
    :cond_0
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 572
    invoke-super {p0}, Landroid/webkitsec/WebView;->clearSelection()V

    .line 575
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 577
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "numOfcharsToDeleteFromCursorPos"    # I

    .prologue
    .line 3000
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3011
    :cond_0
    :goto_0
    return-void

    .line 3002
    :cond_1
    if-lez p2, :cond_2

    .line 3003
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3005
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    .line 3008
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3009
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3010
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 2161
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2162
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 2166
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2171
    :goto_0
    return-void

    .line 2170
    :cond_0
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public delayedUpdateOutlineDrawRect()V
    .locals 4

    .prologue
    .line 5131
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5132
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x503

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5134
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v1, :cond_0

    .line 5135
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5137
    :cond_0
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 3021
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getImageSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3022
    .local v0, "cursurRect":Landroid/graphics/Rect;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() -- cursurRect.left  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursurRect.top =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 3024
    const-string v1, "Delete"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3025
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3026
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 2
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I

    .prologue
    .line 3029
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3035
    :cond_0
    :goto_0
    return-void

    .line 3031
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3032
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 3034
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 3038
    const-string v0, "HtmlComposerView"

    const-string v1, " htmlcomposer destroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3042
    const-string v0, "HtmlComposerView"

    const-string v1, "htmlcomposer destroy() hide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 3046
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    .line 3047
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTargetNull()V

    .line 3048
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    .line 3051
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v0, :cond_2

    .line 3052
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3053
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x501

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3054
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x502

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3055
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x503

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3056
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x504

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3059
    :cond_2
    invoke-super {p0}, Landroid/webkitsec/WebView;->destroy()V

    .line 3060
    return-void
.end method

.method public disableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3063
    invoke-direct {p0, v1}, Landroid/webkitsec/HtmlComposerView;->setEditable(Z)V

    .line 3064
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    .line 3065
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    .line 3066
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 3067
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 21
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 787
    const/16 v19, 0x0

    .line 788
    .local v19, "retVal":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/16 v16, 0x1

    .line 789
    .local v16, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v17

    .line 790
    .local v17, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 792
    .local v15, "MetaState":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 793
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    const/16 v4, 0x39

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    .line 797
    if-eqz v16, :cond_6

    .line 798
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 803
    :cond_1
    :goto_1
    const/16 v4, 0x7a

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_2

    const/16 v4, 0x97

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    .line 805
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    .line 806
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_7

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToBeginningOfLine()V

    .line 815
    :cond_4
    :goto_2
    const/16 v19, 0x1

    .line 1051
    .end local v19    # "retVal":Z
    :goto_3
    return v19

    .line 788
    .end local v15    # "MetaState":I
    .end local v16    # "down":Z
    .end local v17    # "keyCode":I
    .restart local v19    # "retVal":Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_0

    .line 800
    .restart local v15    # "MetaState":I
    .restart local v16    # "down":Z
    .restart local v17    # "keyCode":I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    goto :goto_1

    .line 810
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 811
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfLine()V

    .line 812
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_2

    .line 816
    :cond_8
    const/16 v4, 0x7b

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_9

    const/16 v4, 0x91

    move/from16 v0, v17

    if-eq v0, v4, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_d

    const/16 v4, 0x16

    move/from16 v0, v17

    if-ne v0, v4, :cond_d

    .line 818
    :cond_a
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_b

    .line 819
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_c

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToEndOfLine()V

    .line 828
    :cond_b
    :goto_4
    const/16 v19, 0x1

    goto :goto_3

    .line 823
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 824
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfLine()V

    .line 825
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    .line 829
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_13

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_e

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_13

    .line 830
    :cond_e
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    const/16 v4, 0x13

    move/from16 v0, v17

    if-ne v0, v4, :cond_11

    .line 831
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_10

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorBegining()V

    .line 848
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 849
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 835
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 836
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 838
    :cond_11
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_f

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_f

    .line 839
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_12

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorEnd()V

    goto :goto_5

    .line 843
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    .line 844
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_5

    .line 850
    :cond_13
    const/16 v4, 0x5c

    move/from16 v0, v17

    if-eq v0, v4, :cond_14

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_17

    const/16 v4, 0x99

    move/from16 v0, v17

    if-ne v0, v4, :cond_17

    .line 852
    :cond_14
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_15

    .line 853
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_16

    .line 854
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 855
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToPageUp()V

    .line 856
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 857
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 866
    :cond_15
    :goto_6
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 860
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToPageUp()V

    .line 862
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 863
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_6

    .line 867
    :cond_17
    const/16 v4, 0x5d

    move/from16 v0, v17

    if-eq v0, v4, :cond_18

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_1b

    const/16 v4, 0x93

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    .line 869
    :cond_18
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_19

    .line 870
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1a

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToPageDown()V

    .line 873
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 874
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 883
    :cond_19
    :goto_7
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 877
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 878
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToPageDown()V

    .line 879
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 880
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_7

    .line 886
    :cond_1b
    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_21

    .line 887
    const/16 v4, 0x92

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x94

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x96

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x98

    move/from16 v0, v17

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 892
    :cond_1c
    if-eqz v16, :cond_21

    .line 893
    const/16 v4, 0x92

    move/from16 v0, v17

    if-ne v0, v4, :cond_1d

    .line 894
    const/16 v17, 0x14

    .line 895
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 896
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 897
    :cond_1d
    const/16 v4, 0x94

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e

    .line 898
    const/16 v17, 0x15

    .line 899
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 900
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 901
    :cond_1e
    const/16 v4, 0x96

    move/from16 v0, v17

    if-ne v0, v4, :cond_1f

    .line 902
    const/16 v17, 0x16

    .line 903
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 904
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 905
    :cond_1f
    const/16 v4, 0x98

    move/from16 v0, v17

    if-ne v0, v4, :cond_20

    .line 906
    const/16 v17, 0x13

    .line 907
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 908
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 909
    :cond_20
    const/16 v4, 0x9e

    move/from16 v0, v17

    if-ne v0, v4, :cond_21

    .line 910
    const/4 v2, 0x0

    .line 912
    .local v2, "newKeyEvent":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2    # "newKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 922
    .restart local v2    # "newKeyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 928
    .end local v2    # "newKeyEvent":Landroid/view/KeyEvent;
    :cond_21
    const/16 v4, 0x13

    move/from16 v0, v17

    if-lt v0, v4, :cond_29

    const/16 v4, 0x16

    move/from16 v0, v17

    if-gt v0, v4, :cond_29

    .line 929
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v20

    .line 930
    .local v20, "selctionAtBoundry":I
    if-nez v20, :cond_23

    .line 931
    if-eqz v16, :cond_22

    .line 932
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 933
    :cond_22
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 935
    :cond_23
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_26

    const/16 v4, 0x16

    move/from16 v0, v17

    if-eq v0, v4, :cond_24

    const/16 v4, 0x14

    move/from16 v0, v17

    if-ne v0, v4, :cond_26

    .line 936
    :cond_24
    if-eqz v16, :cond_25

    .line 937
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 938
    :cond_25
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 940
    :cond_26
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_37

    const/16 v4, 0x13

    move/from16 v0, v17

    if-eq v0, v4, :cond_27

    const/16 v4, 0x15

    move/from16 v0, v17

    if-ne v0, v4, :cond_37

    .line 941
    :cond_27
    if-eqz v16, :cond_28

    .line 942
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 943
    :cond_28
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 946
    .end local v20    # "selctionAtBoundry":I
    :cond_29
    const/16 v4, 0x3e

    move/from16 v0, v17

    if-ne v4, v0, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-nez v4, :cond_2b

    .line 947
    if-eqz v16, :cond_2a

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 949
    const-string v4, "InsertText"

    const-string v5, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 950
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 953
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 955
    :cond_2a
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 957
    :cond_2b
    const/16 v4, 0x3d

    move/from16 v0, v17

    if-ne v4, v0, :cond_2e

    .line 958
    if-eqz v16, :cond_2d

    .line 959
    const-string v4, "InsertText"

    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 961
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 963
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-ne v4, v5, :cond_2c

    .line 964
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 966
    :cond_2c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 968
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2d
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 970
    :cond_2e
    const/16 v4, 0x20

    move/from16 v0, v17

    if-ne v4, v0, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 971
    if-eqz v16, :cond_2f

    .line 972
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v5

    if-ne v4, v5, :cond_2f

    .line 973
    const-string v4, "Delete"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 975
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 978
    :cond_2f
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 980
    :cond_30
    const/16 v4, 0x42

    move/from16 v0, v17

    if-eq v0, v4, :cond_31

    const/16 v4, 0xa0

    move/from16 v0, v17

    if-ne v0, v4, :cond_33

    .line 981
    :cond_31
    if-eqz v16, :cond_32

    .line 982
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 983
    const-string v4, "InsertText"

    const-string v5, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 985
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 986
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 987
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 988
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 990
    :cond_32
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 992
    :cond_33
    const/16 v4, 0x71

    move/from16 v0, v17

    if-eq v0, v4, :cond_34

    const/16 v4, 0x72

    move/from16 v0, v17

    if-ne v0, v4, :cond_35

    .line 993
    :cond_34
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 995
    :cond_35
    const/16 v4, 0x1d

    move/from16 v0, v17

    if-eq v0, v4, :cond_36

    const/16 v4, 0x1f

    move/from16 v0, v17

    if-eq v0, v4, :cond_36

    const/16 v4, 0x32

    move/from16 v0, v17

    if-eq v0, v4, :cond_36

    const/16 v4, 0x34

    move/from16 v0, v17

    if-eq v0, v4, :cond_36

    const/16 v4, 0x36

    move/from16 v0, v17

    if-eq v0, v4, :cond_36

    const/16 v4, 0x35

    move/from16 v0, v17

    if-ne v0, v4, :cond_37

    :cond_36
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_37

    .line 999
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtrlPressed and keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    sparse-switch v17, :sswitch_data_0

    .line 1044
    :cond_37
    if-eqz v19, :cond_38

    .line 1045
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    .line 1046
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1048
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto/16 :goto_3

    .line 1003
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1004
    const/16 v18, 0x0

    .line 1005
    .local v18, "result":Z
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 1006
    const v4, 0x102001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v18

    .line 1007
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    move/from16 v19, v18

    .line 1008
    goto/16 :goto_3

    .line 1013
    .end local v18    # "result":Z
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1014
    const v4, 0x1020021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 1019
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1020
    const v4, 0x1020022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 1025
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1026
    const v4, 0x1020020

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 1031
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1032
    const/16 v4, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 1037
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1038
    const/16 v4, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v19

    goto/16 :goto_3

    .line 1051
    :cond_38
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v19

    goto/16 :goto_3

    .line 1001
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_1
        0x32 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1129
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1130
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string v1, "dispatchPopulateAccessibilityEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public doExecute(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "in_args"    # Landroid/os/Bundle;
    .param p2, "out_args"    # Landroid/os/Bundle;

    .prologue
    .line 6395
    const/4 v0, 0x0

    return-object v0
.end method

.method public doResizeImage(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3078
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3082
    :cond_0
    :goto_0
    return-void

    .line 3080
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3081
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public drawSelectionControl()V
    .locals 1

    .prologue
    .line 6133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 6134
    return-void
.end method

.method public drawSelectionControl(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 6150
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6156
    :cond_0
    :goto_0
    return-void

    .line 6152
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6153
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 6155
    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_0
.end method

.method public drawSelectionControl(Z)V
    .locals 3
    .param p1, "isTextChanged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 6137
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6147
    :cond_0
    :goto_0
    return-void

    .line 6139
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6140
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 6142
    :cond_2
    if-ne v2, p1, :cond_0

    .line 6144
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public dropTheDraggedText(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4310
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4316
    :cond_0
    :goto_0
    return-void

    .line 4312
    :cond_1
    const-string v0, "HtmlComposerView"

    const-string v1, "dropTheDraggedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4314
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4315
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22d

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public enableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3198
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    .line 3199
    invoke-direct {p0, v1}, Landroid/webkitsec/HtmlComposerView;->setEditable(Z)V

    .line 3200
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const v6, 0x1040b65

    const v5, 0x1040b64

    const/4 v1, 0x0

    .line 3085
    const-string v2, "Insert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3087
    const/4 v0, 0x0

    .line 3088
    .local v0, "length":I
    if-eqz p2, :cond_0

    .line 3089
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 3090
    :cond_0
    invoke-direct {p0, v0}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3092
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 3093
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 3097
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3111
    .end local v0    # "length":I
    :goto_1
    return v1

    .line 3095
    .restart local v0    # "length":I
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3102
    :cond_2
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_3

    .line 3104
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 3109
    .end local v0    # "length":I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3111
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public executeAlignCenter()V
    .locals 2

    .prologue
    .line 2255
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2256
    const-string v0, "JustifyCenter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2258
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2259
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 2260
    return-void
.end method

.method public executeAlignLeft()V
    .locals 2

    .prologue
    .line 2239
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2240
    const-string v0, "JustifyLeft"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2242
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2243
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 2244
    return-void
.end method

.method public executeAlignRight()V
    .locals 2

    .prologue
    .line 2247
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2248
    const-string v0, "JustifyRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2250
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2251
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 2252
    return-void
.end method

.method public executeHyperlink(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2227
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2228
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2229
    const-string v0, "CreateLink"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2234
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2235
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2236
    return-void

    .line 2232
    :cond_0
    const-string v0, "Unlink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public executeIndent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2174
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2175
    const-string v0, "Indent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2176
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2177
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 2178
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2179
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2180
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->contentInvalidateAll()V

    .line 2181
    return-void
.end method

.method public executeOutdent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2184
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2185
    const-string v0, "Outdent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2186
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2187
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 2188
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2189
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2190
    return-void
.end method

.method public executeUnLink()V
    .locals 2

    .prologue
    .line 2221
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2222
    const-string v0, "UnLink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2224
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2225
    return-void
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    .line 1167
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    .line 1152
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3203
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3220
    :cond_0
    :goto_0
    return-object v2

    .line 3205
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3206
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3207
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3208
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3213
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3218
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3220
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 3210
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3218
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3214
    :catch_0
    move-exception v0

    .line 3215
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getCaretState()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 6186
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6199
    :cond_0
    :goto_0
    return v2

    .line 6188
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6189
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v1

    .line 6190
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x20c

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6192
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6197
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6198
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCaretState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6199
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 6193
    :catch_0
    move-exception v0

    .line 6194
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6197
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public declared-synchronized getComposingState()Z
    .locals 1

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    .prologue
    .line 3224
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getContentX(I)I
    .locals 3
    .param p1, "RawX"    # I

    .prologue
    .line 6380
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 6381
    .local v0, "contentX":I
    return v0
.end method

.method public getContentY(I)I
    .locals 3
    .param p1, "RawY"    # I

    .prologue
    .line 6385
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v0

    .line 6386
    .local v0, "contentY":I
    return v0
.end method

.method public getCurrentFontSize()I
    .locals 4

    .prologue
    .line 3229
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3230
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3231
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x222

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3234
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3238
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3240
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 3235
    :catch_0
    move-exception v0

    .line 3236
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3238
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCurrentFontValue()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3245
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3246
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3247
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3248
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x225

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3252
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3256
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3258
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2

    .line 3250
    :cond_0
    :try_start_3
    monitor-exit v1

    goto :goto_1

    .line 3256
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3253
    :catch_0
    move-exception v0

    .line 3254
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getCursorPressed()Z
    .locals 1

    .prologue
    .line 3263
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .locals 6
    .param p1, "giveContentRect"    # Z

    .prologue
    .line 6158
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6173
    :goto_0
    return-object v4

    .line 6160
    :cond_1
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    .line 6161
    .local v1, "paramArray":[Ljava/lang/Object;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6162
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6163
    .local v3, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 6164
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x209

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6167
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6172
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6173
    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 6168
    :catch_0
    move-exception v0

    .line 6169
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6170
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6172
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public getHTML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3267
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 3268
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 3272
    :goto_0
    return-object v1

    .line 3269
    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3270
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3272
    goto :goto_0
.end method

.method public getImageSize(II)Landroid/graphics/Rect;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2864
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2884
    :goto_0
    return-object v4

    .line 2866
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2868
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2869
    .local v1, "paramArray":[Ljava/lang/Object;
    new-instance v3, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2870
    .local v3, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 2871
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2872
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x226

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2877
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2882
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2884
    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 2874
    :cond_2
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v3

    goto :goto_0

    .line 2882
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2878
    :catch_0
    move-exception v0

    .line 2879
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 3276
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1144
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailContent()Landroid/webkitsec/WebHTMLMarkupData;
    .locals 4

    .prologue
    .line 3280
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getMailHTML()Landroid/webkitsec/WebHTMLMarkupData;

    move-result-object v0

    .line 3281
    .local v0, "data":Landroid/webkitsec/WebHTMLMarkupData;
    if-nez v0, :cond_1

    .line 3289
    :cond_0
    :goto_0
    return-object v0

    .line 3283
    :cond_1
    invoke-virtual {v0}, Landroid/webkitsec/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 3284
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3285
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3286
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3287
    invoke-virtual {v0, v1}, Landroid/webkitsec/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMailHTML()Landroid/webkitsec/WebHTMLMarkupData;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3293
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3311
    :cond_0
    :goto_0
    return-object v3

    .line 3295
    :cond_1
    new-instance v1, Landroid/webkitsec/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkitsec/WebHTMLMarkupData;-><init>()V

    .line 3296
    .local v1, "mailMarkupData":Landroid/webkitsec/WebHTMLMarkupData;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v3, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3297
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/webkitsec/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 3298
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3299
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3304
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3309
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3311
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkitsec/WebHTMLMarkupData;

    goto :goto_0

    .line 3301
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3309
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3305
    :catch_0
    move-exception v0

    .line 3306
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3315
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3331
    :cond_0
    :goto_0
    return-object v2

    .line 3316
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3317
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3318
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3319
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3324
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3329
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3331
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 3321
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3329
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3325
    :catch_0
    move-exception v0

    .line 3326
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3335
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedHtmlText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3127
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3145
    :cond_0
    :goto_0
    return-object v2

    .line 3129
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3130
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3131
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3132
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x230

    invoke-virtual {v3, v4, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3137
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3143
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3145
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 3134
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3143
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3138
    :catch_0
    move-exception v0

    .line 3139
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getSelectedImageRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 2888
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2913
    :goto_0
    return-object v4

    .line 2889
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2890
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v3, -0x1

    .line 2891
    .local v3, "setValue":I
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 2892
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 2893
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 2894
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2896
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2897
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isComposerImageTouched()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2898
    monitor-enter v2

    .line 2899
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2900
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x227

    invoke-virtual {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2905
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2910
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2913
    :cond_2
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 2902
    :cond_3
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 2910
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2906
    :catch_0
    move-exception v0

    .line 2907
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3150
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 3152
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 3392
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionHandleHeight()I
    .locals 1

    .prologue
    .line 3396
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3397
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleHeight()I

    move-result v0

    .line 3399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionHandleWidth()I
    .locals 1

    .prologue
    .line 3403
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3404
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleWidth()I

    move-result v0

    .line 3406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3410
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    invoke-direct {v3, p0, v4, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkitsec/HtmlComposerView;II)V

    .line 3429
    :goto_0
    return-object v3

    .line 3412
    :cond_1
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3413
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 3414
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3415
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3420
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3425
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3427
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 3429
    .local v1, "pnt":Landroid/graphics/Point;
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, p0, v4, v5}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkitsec/HtmlComposerView;II)V

    goto :goto_0

    .line 3417
    .end local v1    # "pnt":Landroid/graphics/Point;
    :cond_2
    :try_start_3
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, p0, v4, v5}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkitsec/HtmlComposerView;II)V

    monitor-exit v2

    goto :goto_0

    .line 3425
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3421
    :catch_0
    move-exception v0

    .line 3422
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectionSec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3160
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 3433
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getShiftKeyState()Z
    .locals 1

    .prologue
    .line 4116
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    return v0
.end method

.method public getStateInRichlyEditableText()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3372
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3388
    :cond_0
    :goto_0
    return v2

    .line 3374
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3375
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3376
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3377
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3382
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3386
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3388
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 3379
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3386
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3383
    :catch_0
    move-exception v0

    .line 3384
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3339
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 3340
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 3341
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3342
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 3343
    .local v0, "chrVal":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const-string v1, ""

    .line 3344
    :cond_1
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    .end local v0    # "chrVal":I
    :cond_2
    return-object v1
.end method

.method public getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "cursorDirection"    # Landroid/webkitsec/HtmlComposerView$CursorDirection;

    .prologue
    const/4 v3, 0x0

    .line 3350
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3368
    :cond_0
    :goto_0
    return-object v3

    .line 3352
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 3353
    .local v1, "paramArray":[Ljava/lang/Object;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3354
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 3355
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3356
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3361
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3366
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3368
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 3358
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3366
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3362
    :catch_0
    move-exception v0

    .line 3363
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;
    .locals 1

    .prologue
    .line 3164
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    return-object v0
.end method

.method protected handle_onTouchEvent(IIIII)Z
    .locals 21
    .param p1, "action"    # I
    .param p2, "contentX"    # I
    .param p3, "contentY"    # I
    .param p4, "rawX"    # I
    .param p5, "rawY"    # I

    .prologue
    .line 1697
    packed-switch p1, :pswitch_data_0

    .line 1973
    :cond_0
    :goto_0
    const/16 v18, 0x0

    :goto_1
    return v18

    .line 1699
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1701
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1702
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    .line 1703
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_CANCEL()V

    .line 1704
    const/16 v18, 0x1

    goto :goto_1

    .line 1707
    :cond_1
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 1708
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_0

    .line 1714
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1716
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1717
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v10

    .line 1718
    .local v10, "imagerect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "     imagerect left ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect top  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect right = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect bottom="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "     content X ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " content Y  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_3
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 1722
    const-string v18, "HtmlComposerView"

    const-string v19, " image is touched and can be moved "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1730
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_DOWN(IIII)V

    .line 1731
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1735
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    .line 1736
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    .line 1738
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1726
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    goto :goto_2

    .line 1744
    .end local v10    # "imagerect":Landroid/graphics/Rect;
    :pswitch_2
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1745
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1746
    const/4 v8, 0x0

    .line 1748
    .local v8, "imageHandlerHeight":I
    const/4 v5, 0x0

    .line 1750
    .local v5, "extraTouchArea":I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 1751
    .local v11, "locOnScreen":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1752
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 1756
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1757
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    .line 1762
    :cond_8
    :goto_3
    add-int v18, p5, v8

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    const/16 v20, 0x1

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 1763
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    sub-int v18, v18, v8

    sub-int v18, v18, p5

    add-int p3, p3, v18

    .line 1764
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    sub-int p5, v18, v8

    .line 1770
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    .line 1771
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v18, v0

    sub-int v18, p3, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    .line 1772
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_MOVE(II)V

    .line 1773
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1775
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1759
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 1765
    :cond_b
    add-int v18, v8, v5

    sub-int v18, p5, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    const/16 v20, 0x1

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 1766
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    add-int v18, v18, v8

    sub-int v18, v18, p5

    add-int p3, p3, v18

    .line 1767
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    add-int p5, v18, v8

    goto :goto_4

    .line 1776
    .end local v5    # "extraTouchArea":I
    .end local v8    # "imageHandlerHeight":I
    .end local v11    # "locOnScreen":[I
    :cond_c
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    const/16 v19, 0x21c

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 1781
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_f

    .line 1782
    :cond_e
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1786
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1788
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1795
    :pswitch_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1797
    const-string v18, "HtmlComposerView"

    const-string/jumbo v19, "making selection set to true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 1800
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 1801
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 1802
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    .line 1803
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 1807
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1810
    :cond_10
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCursorPressed()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 1812
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1815
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v14

    .line 1817
    .local v14, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 1820
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v9

    .line 1822
    .local v9, "imageUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1824
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1827
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1829
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1831
    .local v12, "msg":Landroid/os/Message;
    const/16 v18, 0x502

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1832
    iput-object v9, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1838
    :cond_12
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1840
    .end local v12    # "msg":Landroid/os/Message;
    :cond_13
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 1845
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1847
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1849
    .end local v9    # "imageUri":Ljava/lang/String;
    :cond_14
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1852
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 1853
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_UP(II)V

    .line 1854
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1859
    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v7

    .line 1860
    .local v7, "finalWidth":I
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v6

    .line 1862
    .local v6, "finalHeight":I
    const/4 v15, 0x0

    .line 1863
    .local v15, "sameImageFlag":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v13

    .line 1865
    .local v13, "oldImageRect":Landroid/graphics/Rect;
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    .line 1866
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1868
    const/4 v15, 0x1

    .line 1871
    :cond_16
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 1872
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_17

    .line 1873
    const-string v18, "HtmlComposerView"

    const-string v19, "Image isn\'t going to resize "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :goto_5
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1875
    :cond_17
    const-string v18, "HtmlComposerView"

    const-string v19, "doResizeImage called - Image is going to resize "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v17

    .line 1879
    .local v17, "selectedImgRect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    .line 1880
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_18

    mul-int/lit8 v18, v6, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000    # 10.0f

    cmpl-float v18, v18, v19

    if-gez v18, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_19

    mul-int/lit8 v18, v7, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000    # 10.0f

    cmpl-float v18, v18, v19

    if-gez v18, :cond_1a

    :cond_19
    mul-int/lit8 v18, v7, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000    # 10.0f

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_1c

    mul-int/lit8 v18, v6, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000    # 10.0f

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_1c

    .line 1883
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Landroid/webkitsec/HtmlComposerView;->doResizeImage(II)V

    .line 1884
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1886
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    .line 1892
    :cond_1b
    :goto_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 1893
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1895
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_5

    .line 1888
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    goto :goto_6

    .line 1901
    .end local v17    # "selectedImgRect":Landroid/graphics/Rect;
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v18, v0

    if-nez v18, :cond_1e

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e

    .line 1902
    const-string v18, "InsertHTML"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->insertImageContent(Ljava/lang/String;)V

    .line 1904
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1905
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 1906
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 1908
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1910
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    .line 1912
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1914
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1917
    :cond_1e
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_1f

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_1f

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_1f

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_21

    .line 1918
    :cond_1f
    const-string v18, "HtmlComposerView"

    const-string v19, "User taps outside of an image rect. We will release the selection"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->isCursorAtBoundary(II)I

    move-result v18

    if-nez v18, :cond_20

    .line 1921
    const-string v18, "HtmlComposerView"

    const-string v19, "Boundary is not touched"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1924
    :cond_20
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1928
    :cond_21
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_25

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_25

    if-nez v15, :cond_25

    .line 1930
    const-string v18, "HtmlComposerView"

    const-string v19, "A other image is selected."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v16

    .line 1934
    .local v16, "selectedImageRect":Landroid/graphics/Rect;
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v9

    .line 1935
    .restart local v9    # "imageUri":Ljava/lang/String;
    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Selected Image\'s url = ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_23

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_23

    .line 1938
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1941
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1943
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1944
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v18, 0x502

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1945
    iput-object v9, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_22

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1951
    :cond_22
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1953
    .end local v12    # "msg":Landroid/os/Message;
    :cond_23
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    .line 1958
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 1960
    :cond_24
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1963
    .end local v9    # "imageUri":Ljava/lang/String;
    .end local v16    # "selectedImageRect":Landroid/graphics/Rect;
    :cond_25
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_0

    .line 1964
    const-string v18, "HtmlComposerView"

    const-string v19, "The current selected image is tapped."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public hideInsertionController()V
    .locals 0

    .prologue
    .line 3441
    return-void
.end method

.method public htmlLength()I
    .locals 1

    .prologue
    .line 3444
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public initComposerState()V
    .locals 1

    .prologue
    .line 3448
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3449
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3450
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3452
    :cond_0
    return-void
.end method

.method initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imagetRect1"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 5036
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    .line 5037
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 5039
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 5040
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 5041
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    .line 5042
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 5043
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 5044
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 5045
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 5047
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    .line 5048
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    .line 5049
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 5050
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 5051
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 5052
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 5055
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lt_height:I

    .line 5056
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lt_width:I

    .line 5059
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rt_height:I

    .line 5060
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rt_width:I

    .line 5062
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lb_height:I

    .line 5063
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lb_width:I

    .line 5066
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_height:I

    .line 5067
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rb_width:I

    .line 5069
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_height:I

    .line 5070
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->tm_width:I

    .line 5072
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rm_height:I

    .line 5073
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->rm_width:I

    .line 5076
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lm_height:I

    .line 5077
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->lm_width:I

    .line 5079
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->bm_height:I

    .line 5080
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->bm_width:I

    .line 5082
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 5084
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    .line 5086
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5087
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5088
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 5089
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 5090
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 5091
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 5092
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 5094
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 5095
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 5096
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 5097
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 5099
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5101
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5102
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mTouchSlop:I

    .line 5104
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    .line 5105
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    .line 5106
    return-void
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z
    .locals 4
    .param p1, "contentFragment"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 3455
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    .line 3457
    .local v0, "selectionType":I
    sget-object v2, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_1

    .line 3458
    const-string v2, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3463
    :cond_0
    :goto_0
    const-string v2, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 3473
    :goto_1
    return v1

    .line 3460
    :cond_1
    sget-object v2, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_0

    .line 3461
    const-string v2, "MoveToEndOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 3466
    :cond_2
    if-ne v1, v0, :cond_3

    .line 3467
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3471
    :goto_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_1

    .line 3469
    :cond_3
    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_2
.end method

.method public insertImage(Ljava/lang/String;IIZ)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "widthInPixel"    # I
    .param p3, "heightInPixel"    # I
    .param p4, "bEditing"    # Z

    .prologue
    .line 3515
    const/4 v0, 0x1

    if-ne v0, p4, :cond_1

    .line 3516
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    .line 3517
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3518
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebView;->clearCache(Z)V

    .line 3519
    if-eqz p1, :cond_0

    .line 3520
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    .line 3523
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    .line 3527
    :goto_0
    return-void

    .line 3525
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bEditing"    # Z

    .prologue
    .line 3567
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 3568
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    .line 3569
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebView;->clearCache(Z)V

    .line 3571
    if-eqz p1, :cond_0

    .line 3572
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    .line 3575
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    .line 3579
    :goto_0
    return-void

    .line 3577
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3531
    if-nez p1, :cond_1

    .line 3556
    :cond_0
    :goto_0
    return v2

    .line 3533
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3535
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3537
    .local v1, "selectionType":I
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3538
    .local v0, "imgMarkup":Ljava/lang/String;
    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3545
    if-ne v3, v1, :cond_2

    .line 3546
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3550
    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3553
    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3554
    const v2, 0x102040a

    sput v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v2, v3

    .line 3556
    goto :goto_0

    .line 3548
    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertImage(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "widthInPixel"    # I
    .param p3, "heightInPixel"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3477
    if-nez p1, :cond_1

    .line 3502
    :cond_0
    :goto_0
    return v2

    .line 3479
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3481
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3483
    .local v1, "selectionType":I
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3484
    .local v0, "imgMarkup":Ljava/lang/String;
    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3491
    if-ne v3, v1, :cond_2

    .line 3492
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3496
    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3499
    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3500
    const v2, 0x102040a

    sput v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v2, v3

    .line 3502
    goto :goto_0

    .line 3494
    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertOrderedList()V
    .locals 2

    .prologue
    .line 2193
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2194
    const-string v0, "InsertOrderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2196
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2197
    return-void
.end method

.method public insertSubscript()V
    .locals 2

    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2207
    const-string v0, "Superscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2209
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2210
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2211
    return-void
.end method

.method public insertSuperscript()V
    .locals 2

    .prologue
    .line 2214
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2215
    const-string v0, "Subscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2217
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2218
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2219
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkitsec/HtmlComposerView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .local p4, "spanData":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;>;"
    const/4 v3, -0x1

    .line 3584
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    invoke-direct {v2, p0, v3, v3}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkitsec/HtmlComposerView;II)V

    .line 3605
    :goto_0
    return-object v2

    .line 3586
    :cond_1
    new-instance v1, Landroid/webkitsec/WebViewCore$EditableParams;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$EditableParams;-><init>(Landroid/webkitsec/WebViewCore;)V

    .line 3587
    .local v1, "editableParams":Landroid/webkitsec/WebViewCore$EditableParams;
    iput-object p1, v1, Landroid/webkitsec/WebViewCore$EditableParams;->content:Ljava/lang/String;

    .line 3588
    iput p2, v1, Landroid/webkitsec/WebViewCore$EditableParams;->newCursorPosition:I

    .line 3589
    iput-boolean p3, v1, Landroid/webkitsec/WebViewCore$EditableParams;->composing:Z

    .line 3590
    iput-object p4, v1, Landroid/webkitsec/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    .line 3592
    monitor-enter v1

    .line 3593
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3594
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3599
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3603
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3605
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    iget v3, v1, Landroid/webkitsec/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkitsec/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkitsec/HtmlComposerView;II)V

    goto :goto_0

    .line 3596
    :cond_2
    :try_start_3
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(Landroid/webkitsec/HtmlComposerView;II)V

    monitor-exit v1

    goto :goto_0

    .line 3603
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3600
    :catch_0
    move-exception v0

    .line 3601
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public insertUnorderedList()V
    .locals 2

    .prologue
    .line 2200
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2201
    const-string v0, "InsertUnorderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2203
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2204
    return-void
.end method

.method public invokeTexttoSpeech(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 3610
    const/4 v1, 0x0

    .local v1, "beforeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3612
    .local v0, "aftStr":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 3616
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3619
    :cond_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 3621
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3624
    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_a

    .line 3626
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3628
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3638
    :goto_0
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 3639
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "paste operations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    :cond_5
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3678
    :cond_6
    :goto_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2, v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 3679
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 3680
    if-eqz v0, :cond_f

    .line 3681
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    .line 3684
    :goto_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 3685
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 3686
    sput v5, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 3687
    :cond_7
    :goto_3
    return-void

    .line 3632
    :cond_8
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3633
    const-string v0, "Images inserted"

    goto :goto_0

    .line 3635
    :cond_9
    const-string v0, "Images"

    goto :goto_0

    .line 3644
    :cond_a
    const v2, 0x1020020

    if-ne p1, v2, :cond_b

    .line 3646
    const-string v0, ""

    .line 3647
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto :goto_1

    .line 3649
    :cond_b
    const v2, 0x1020408

    if-ne p1, v2, :cond_c

    .line 3651
    const-string v0, ""

    .line 3652
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3654
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 3657
    :cond_c
    const v2, 0x102040a

    if-ne p1, v2, :cond_d

    .line 3659
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3660
    const-string v1, ""

    goto :goto_1

    .line 3662
    :cond_d
    const/16 v2, 0xf

    if-ne p1, v2, :cond_7

    .line 3665
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3667
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 3668
    const-string v2, "HtmlComposerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    :cond_e
    const-string v1, ""

    goto :goto_1

    .line 3683
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v5, v2}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    goto :goto_2
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x1

    return v0
.end method

.method public isBodyEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3689
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3707
    :cond_0
    :goto_0
    return v3

    .line 3691
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3692
    .local v0, "bodyEmpty":Ljava/lang/Boolean;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3693
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 3694
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3695
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3700
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3705
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3707
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 3697
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3705
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3701
    :catch_0
    move-exception v1

    .line 3702
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isComposerImageTouched()Z
    .locals 1

    .prologue
    .line 6376
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    return v0
.end method

.method public isInActionMove()Z
    .locals 1

    .prologue
    .line 3123
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 3715
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3716
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInsertionControllerShowing()Z
    .locals 1

    .prologue
    .line 3437
    const/4 v0, 0x0

    return v0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 3720
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    .line 3721
    const/4 v0, 0x1

    .line 3723
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionHandleShown()Z
    .locals 1

    .prologue
    .line 3727
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    return v0
.end method

.method public isTouchedOutside(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 3168
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3190
    :cond_0
    :goto_0
    return v5

    .line 3170
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3172
    .local v3, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 3174
    .local v2, "paramArray":[Ljava/lang/Object;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3175
    .local v1, "isOutside":Ljava/lang/Boolean;
    new-instance v4, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v4, p0, v2, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3177
    .local v4, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v4

    .line 3178
    :try_start_0
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3179
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v5

    const/16 v6, 0x22e

    invoke-virtual {v5, v6, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3184
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3189
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3190
    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 3181
    :cond_2
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 3189
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 3185
    :catch_0
    move-exception v0

    .line 3186
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v5, "HtmlComposerView"

    const-string v6, "Caught exception while waiting for overrideUrl"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    const-string v5, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isVisibleCursorHandler(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2079
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    packed-switch p1, :pswitch_data_0

    .line 2128
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2083
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    .line 2084
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2085
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 2089
    :pswitch_2
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    .line 2092
    :pswitch_3
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 2094
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2095
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 2099
    :pswitch_4
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 2100
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    .line 2101
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2102
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 2105
    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    if-ne v0, v3, :cond_2

    .line 2106
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    .line 2108
    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 2114
    :pswitch_5
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_3

    .line 2115
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 2119
    :cond_3
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2120
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2121
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 2081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public isVisibleCursorhandlerListener(Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;)V
    .locals 0
    .param p1, "mCursorHandlerListener"    # Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    .prologue
    .line 3195
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    .line 3196
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 3731
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "htmlFilePath"    # Ljava/lang/String;

    .prologue
    .line 3735
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3737
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 3738
    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    .prologue
    .line 3741
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3742
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3743
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3744
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3745
    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    .prologue
    .line 3748
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3749
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3750
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3751
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3752
    return-void
.end method

.method public moveCursorSelectionToBeginningOfDocument()V
    .locals 2

    .prologue
    .line 3759
    const-string v0, "MoveToBeginningOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3760
    return-void
.end method

.method public moveCursorSelectionToBeginningOfLine()V
    .locals 2

    .prologue
    .line 3763
    const-string v0, "MoveToBeginningOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3764
    return-void
.end method

.method public moveCursorSelectionToEndOfDocument()V
    .locals 2

    .prologue
    .line 3767
    const-string v0, "MoveToEndOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3768
    return-void
.end method

.method public moveCursorSelectionToEndOfLine()V
    .locals 2

    .prologue
    .line 3771
    const-string v0, "MoveToRightEndOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3772
    return-void
.end method

.method public moveCursorSelectionToPageDown()V
    .locals 2

    .prologue
    .line 3799
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3800
    const-string v0, "MovePageDownAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3801
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3802
    return-void
.end method

.method public moveCursorSelectionToPageUp()V
    .locals 2

    .prologue
    .line 3805
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3806
    const-string v0, "MovePageUpAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3807
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3808
    return-void
.end method

.method public moveCursorToBeginningOfLine()V
    .locals 2

    .prologue
    .line 3775
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3776
    const-string v0, "MoveToBeginningOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3777
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3778
    return-void
.end method

.method public moveCursorToEndOfLine()V
    .locals 2

    .prologue
    .line 3781
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3782
    const-string v0, "MoveToEndOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3783
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3784
    return-void
.end method

.method public moveCursorToPageDown()V
    .locals 2

    .prologue
    .line 3787
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3788
    const-string v0, "MovePageDown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3789
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3790
    return-void
.end method

.method public moveCursorToPageUp()V
    .locals 2

    .prologue
    .line 3793
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3794
    const-string v0, "MovePageUp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3795
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3796
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 582
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 584
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    if-nez v1, :cond_0

    .line 585
    new-instance v1, Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkitsec/HtmlComposerView;Landroid/webkitsec/HtmlComposerView$1;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 586
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 589
    :cond_0
    invoke-super {p0}, Landroid/webkitsec/WebView;->onAttachedToWindow()V

    .line 590
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 1183
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1184
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, v2, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    new-array v2, v2, [I

    iput-object v2, v1, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    .line 1185
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    .line 1186
    .local v0, "selectionType":I
    if-ne v3, v0, :cond_1

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-nez v1, :cond_1

    .line 1188
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    invoke-interface {v1, v3}, Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;->onSelectionChanged(I)V

    .line 1191
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 1194
    :cond_1
    return-void
.end method

.method public onContextMenuItem(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 626
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 628
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 630
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 632
    sparse-switch p1, :sswitch_data_0

    .line 782
    :cond_0
    :goto_0
    return v4

    .line 636
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 638
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    if-ne v5, v3, :cond_1

    .line 639
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 640
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 644
    :goto_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 646
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v3, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 647
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    iput v3, v6, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 648
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 649
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 650
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 652
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 653
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 654
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    move v4, v5

    .line 655
    goto :goto_0

    .line 642
    :cond_1
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    goto :goto_1

    :cond_2
    move v3, v4

    .line 647
    goto :goto_2

    .line 659
    :sswitch_1
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 660
    .local v0, "cursurRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 662
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/webkitsec/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 663
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 665
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    move v4, v5

    .line 666
    goto :goto_0

    .line 669
    .end local v0    # "cursurRect":Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 670
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 671
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->cut()V

    .line 672
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 673
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 674
    const v3, 0x1020020

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 675
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 676
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 677
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 679
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_3

    .line 681
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 683
    const-string v3, " image "

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 684
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    .line 685
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object v6, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    :cond_3
    move v4, v5

    .line 687
    goto/16 :goto_0

    .line 690
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 692
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 693
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 694
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->cut()V

    .line 695
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 696
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 697
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 698
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 699
    const v3, 0x1020408

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 701
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_4

    .line 703
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 705
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    .line 706
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object v6, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 707
    const-string v3, " images "

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_4
    move v4, v5

    .line 710
    goto/16 :goto_0

    .line 713
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->copy()V

    .line 714
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isSelectionHandleShown()Z

    move-result v3

    if-ne v5, v3, :cond_5

    .line 715
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    .line 717
    :cond_5
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 718
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    move v4, v5

    .line 719
    goto/16 :goto_0

    .line 724
    :sswitch_5
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 726
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->copy()V

    .line 727
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    move v4, v5

    .line 729
    goto/16 :goto_0

    .line 732
    :sswitch_6
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 734
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x1040b64

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x1040b65

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 735
    goto/16 :goto_0

    .line 737
    :cond_6
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 739
    const-string v3, ""

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 742
    :cond_7
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v2

    .line 744
    .local v2, "selectionType":I
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->paste()V

    .line 746
    if-ne v5, v2, :cond_8

    .line 747
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 751
    :goto_3
    const v3, 0x1020022

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v4, v5

    .line 752
    goto/16 :goto_0

    .line 749
    :cond_8
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_3

    .line 760
    .end local v2    # "selectionType":I
    :sswitch_7
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 761
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebClipboard;->launchClipboardUI()V

    move v4, v5

    .line 762
    goto/16 :goto_0

    .line 765
    :sswitch_8
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 766
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->undo()V

    .line 767
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 768
    goto/16 :goto_0

    .line 771
    :sswitch_9
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->redo()V

    .line 772
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 773
    goto/16 :goto_0

    .line 776
    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 777
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_9

    .line 778
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_9
    move v4, v5

    .line 780
    goto/16 :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_9
        0x2711 -> :sswitch_8
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1203
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v4, v1, :cond_0

    .line 1206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1207
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1208
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1211
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    if-nez v1, :cond_1

    .line 1212
    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-virtual {p0, v3, v3}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    .line 1217
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1224
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1225
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1227
    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1228
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1230
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 1232
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 596
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 598
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 601
    :cond_0
    invoke-super {p0}, Landroid/webkitsec/WebView;->onDetachedFromWindow()V

    .line 602
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 23
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1251
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    .line 1253
    .local v3, "action":I
    packed-switch v3, :pswitch_data_0

    .line 1350
    const/16 v18, 0x0

    :goto_0
    return v18

    .line 1255
    :pswitch_0
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_STARTED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    .line 1259
    const/16 v18, 0x1

    goto :goto_0

    .line 1262
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v14

    .line 1264
    .local v14, "selectedText":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->saveSelection()V

    .line 1266
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    .line 1269
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v16

    .line 1270
    .local v16, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v17

    .line 1272
    .local v17, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    const/16 v19, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v21

    invoke-virtual/range {v18 .. v21}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 1276
    :cond_2
    const/16 v18, 0x1

    goto :goto_0

    .line 1278
    .end local v14    # "selectedText":Ljava/lang/String;
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_1
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_ENTERED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v18

    if-nez v18, :cond_3

    .line 1280
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 1281
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 1283
    :cond_3
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1285
    :pswitch_2
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_LOCATION"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v16

    .line 1287
    .restart local v16    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v17

    .line 1289
    .restart local v17    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    const/16 v19, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v21

    invoke-virtual/range {v18 .. v21}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 1291
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 1294
    :cond_4
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1296
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_3
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_EXITED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1299
    :pswitch_4
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DROP"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v16

    .line 1301
    .restart local v16    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v17

    .line 1303
    .restart local v17    # "y":F
    const/4 v11, 0x0

    .local v11, "plainText":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "htmlText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1304
    .local v4, "contentUri":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1305
    .local v12, "sbForHTML":Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1307
    .local v13, "sbForText":Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    .line 1308
    .local v6, "data":Landroid/content/ClipData;
    invoke-virtual {v6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    .line 1310
    .local v7, "description":Landroid/content/ClipDescription;
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    .line 1312
    .local v5, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_a

    .line 1313
    invoke-virtual {v6, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 1315
    .local v10, "item":Landroid/content/ClipData$Item;
    if-nez v10, :cond_6

    .line 1312
    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1317
    :cond_6
    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 1318
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DragEvent.ACTION_DROP HTML = ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_7
    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    goto :goto_2

    .line 1321
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1322
    .local v15, "str":Ljava/lang/CharSequence;
    if-eqz v15, :cond_5

    .line 1323
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DragEvent.ACTION_DROP sbForText = ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_9
    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_2

    .line 1329
    .end local v10    # "item":Landroid/content/ClipData$Item;
    .end local v15    # "str":Ljava/lang/CharSequence;
    :cond_a
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-lez v18, :cond_c

    .line 1330
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->dropTheDraggedText(II)V

    .line 1332
    const-string v18, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1340
    :cond_b
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 1342
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1333
    :cond_c
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-lez v18, :cond_b

    .line 1334
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->dropTheDraggedText(II)V

    .line 1336
    invoke-static {v11}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1337
    const-string v18, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 1344
    .end local v4    # "contentUri":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v6    # "data":Landroid/content/ClipData;
    .end local v7    # "description":Landroid/content/ClipDescription;
    .end local v8    # "htmlText":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "plainText":Ljava/lang/String;
    .end local v12    # "sbForHTML":Ljava/lang/StringBuffer;
    .end local v13    # "sbForText":Ljava/lang/StringBuffer;
    .end local v16    # "x":F
    .end local v17    # "y":F
    :pswitch_5
    const-string v18, "HtmlComposerView"

    const-string v19, "DragEvent.ACTION_DRAG_ENDED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget v0, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1241
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  --- Ondraw  -clearSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    .line 1243
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    .line 1245
    :cond_0
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1246
    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .param p1, "actionCode"    # I

    .prologue
    const/16 v2, 0x82

    .line 3816
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 3817
    invoke-virtual {p0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 3818
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3819
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3820
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3827
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3828
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1357
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-super {p0, p1, p2, p3}, Landroid/webkitsec/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1359
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 1360
    if-nez p1, :cond_2

    .line 1361
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 1363
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 1366
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 1369
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 1371
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1385
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1386
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1388
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v4, v0, :cond_1

    .line 1389
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 1390
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->clearActionModes()V

    .line 1392
    :cond_1
    return-void

    .line 1373
    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1374
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->updateClipboardUI()V

    .line 1377
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocus calling invokeTexttoSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 1397
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1399
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 1400
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1404
    .local v0, "contentX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    float-to-int v3, v3

    .line 1450
    .end local v0    # "contentX":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1406
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 1407
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_EXIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1409
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    .line 1410
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mXCenter:I

    .line 1411
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mYCenter:I

    goto :goto_0

    .line 1446
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1412
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 1413
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1416
    .restart local v0    # "contentX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1418
    .local v1, "contentY":I
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-ne v5, v3, :cond_4

    .line 1419
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent true == isHoverPointWithinIconAreaForResizing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_3
    const/4 v2, 0x1

    .line 1423
    .local v2, "pointerIconType":I
    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mRHIResource:I

    packed-switch v3, :pswitch_data_0

    .line 1441
    :goto_1
    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    .line 1425
    :pswitch_0
    const/16 v2, 0x8

    .line 1426
    goto :goto_1

    .line 1429
    :pswitch_1
    const/16 v2, 0x9

    .line 1430
    goto :goto_1

    .line 1433
    :pswitch_2
    const/4 v2, 0x7

    .line 1434
    goto :goto_1

    .line 1437
    :pswitch_3
    const/4 v2, 0x6

    goto :goto_1

    .line 1443
    .end local v2    # "pointerIconType":I
    :cond_4
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1423
    :pswitch_data_0
    .packed-switch 0x108069f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1057
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1059
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onInitializeAccessibilityEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1063
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2

    .line 1064
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onInitializeAccessibilityEvent selection changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1066
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 1067
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "curText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 1070
    .end local v0    # "curText":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1074
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1076
    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "curText":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 1083
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1084
    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1085
    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1086
    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 1093
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1094
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1095
    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1097
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1098
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1100
    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1101
    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1103
    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1104
    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1107
    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 1467
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1468
    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "htmlcompor onKeyDown "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_0
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v6, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1478
    iput-boolean v9, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1484
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1491
    const/16 v6, 0x37

    if-eq p1, v6, :cond_2

    const/16 v6, 0x3e

    if-ne p1, v6, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    if-eq v6, v5, :cond_4

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-static {v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v7

    if-eq v6, v7, :cond_4

    :cond_3
    const/16 v6, 0x3f

    if-ne p1, v6, :cond_5

    .line 1494
    :cond_4
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1497
    :cond_5
    sparse-switch p1, :sswitch_data_0

    .line 1528
    :goto_0
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1529
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 1531
    const/4 v2, 0x0

    .line 1533
    .local v2, "prevSpanTextBeforeStartOffset":Ljava/lang/String;
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const/16 v7, 0xf

    invoke-virtual {v6, v7, v9}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1535
    .local v4, "spannableString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1537
    .local v3, "spannableChar":[C
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1539
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v9, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1540
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 1541
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1542
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 1544
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    if-ltz v6, :cond_6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v6, :cond_6

    .line 1546
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v6, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1549
    :cond_6
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-lt v6, v5, :cond_7

    .line 1551
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1554
    :cond_7
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, p0, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1556
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    sub-int v1, v6, v7

    .line 1558
    .local v1, "diff":I
    if-eqz v1, :cond_8

    .line 1559
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 1561
    :cond_8
    if-lez v1, :cond_d

    .line 1563
    if-eqz v2, :cond_c

    .line 1565
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_b

    .line 1567
    const-string v6, ""

    invoke-virtual {p0, v6, v5}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1568
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1569
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 1583
    :goto_1
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1584
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 1593
    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    .line 1594
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    :cond_a
    move v0, v5

    .line 1600
    .end local v1    # "diff":I
    .end local v2    # "prevSpanTextBeforeStartOffset":Ljava/lang/String;
    .end local v3    # "spannableChar":[C
    .end local v4    # "spannableString":Ljava/lang/String;
    :goto_3
    return v0

    .line 1500
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebClipboard;->launchClipboardUI()V

    move v0, v5

    .line 1501
    goto :goto_3

    .line 1505
    :sswitch_1
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto/16 :goto_0

    .line 1510
    :sswitch_2
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    goto/16 :goto_0

    .line 1514
    :sswitch_3
    const-string v6, "DeleteForward"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1515
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v0, v5

    .line 1516
    goto :goto_3

    .line 1519
    :sswitch_4
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1520
    .local v0, "bResult":Z
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 1521
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_3

    .end local v0    # "bResult":Z
    :sswitch_5
    move v0, v5

    .line 1525
    goto :goto_3

    .line 1573
    .restart local v1    # "diff":I
    .restart local v2    # "prevSpanTextBeforeStartOffset":Ljava/lang/String;
    .restart local v3    # "spannableChar":[C
    .restart local v4    # "spannableString":Ljava/lang/String;
    :cond_b
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1574
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1579
    :cond_c
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1580
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1585
    :cond_d
    if-gez v1, :cond_9

    .line 1587
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1588
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 1589
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1590
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    goto/16 :goto_2

    .line 1600
    .end local v1    # "diff":I
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 1497
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_5
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x43 -> :sswitch_4
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0xe8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1457
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1461
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1605
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebClipboard;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    const-string v1, "HtmlComposerView"

    const-string v2, " onKeyPreIme-dismiss Clipboard "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebClipboard;->dismissClipboardUI()V

    .line 1609
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1617
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1618
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htmlcompor onKeyUp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1650
    :goto_0
    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v1, :cond_1

    .line 1652
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1655
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    if-eqz v1, :cond_4

    .line 1657
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p0, v2, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1661
    :goto_1
    :sswitch_0
    return v0

    .line 1624
    :sswitch_1
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto :goto_0

    .line 1628
    :sswitch_2
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    goto :goto_0

    .line 1633
    :sswitch_3
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_3

    .line 1634
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1636
    const-string v1, "image"

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 1637
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const v1, 0x1020020

    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 1640
    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1641
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0

    .line 1643
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1661
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1621
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x43 -> :sswitch_3
        0x70 -> :sswitch_0
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1111
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1113
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onPopulateAccessibilityEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, "textForAccessibility":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent textForAccessibility = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1119
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent event.getText = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent event.getText after= ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_3
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onPopulateAccessibilityEvent End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_4
    return-void
.end method

.method public onRecieveWebViewDoubleTapped()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3923
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onRecieveWebViewDoubleTapped()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 3929
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    .line 3930
    .local v0, "selectionType":I
    if-ne v3, v0, :cond_0

    .line 3931
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 3936
    :goto_0
    return-void

    .line 3933
    :cond_0
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_0
.end method

.method public onRecieveWebViewSelectionChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 3939
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebViewSelectionChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 3944
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3945
    .local v1, "selectionType":I
    if-ne v4, v1, :cond_3

    .line 3946
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3948
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 3949
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 3950
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3952
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3953
    const/16 v2, 0x2000

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEvent(I)V

    .line 3963
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getDCHandlerLastHandleType()I

    move-result v0

    .line 3965
    .local v0, "handleType":I
    if-ne v0, v4, :cond_4

    .line 3966
    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    .line 3971
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 3974
    if-ne v4, v1, :cond_5

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    if-ne v4, v2, :cond_5

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3975
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 3976
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 3982
    :cond_2
    :goto_2
    return-void

    .line 3955
    .end local v0    # "handleType":I
    :cond_3
    if-nez v1, :cond_0

    .line 3956
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->isInBatchEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3957
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 3958
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 3959
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    .line 3967
    .restart local v0    # "handleType":I
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3968
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_1

    .line 3978
    :cond_5
    if-eq v4, v1, :cond_2

    .line 3979
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_2
.end method

.method public onRecieveWebviewLongTouchUp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3879
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewLongTouchUp() Has Long-pressed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    if-nez v2, :cond_0

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 3887
    :cond_0
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 3889
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_2

    .line 3890
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3891
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewLongTouchUp() this view has already lost the focus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    :cond_1
    :goto_0
    return-void

    .line 3896
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3898
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3900
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imm active  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getTargetView()Landroid/webkitsec/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->SendInitComposing()V

    .line 3903
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 3904
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 3906
    :cond_3
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 3909
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3910
    .local v1, "selectionType":I
    if-ne v5, v1, :cond_1

    .line 3911
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    goto :goto_0
.end method

.method public onRecieveWebviewShortTouchUp()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3831
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() Has Short-pressed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_1

    .line 3834
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3835
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() this view has already lost the focus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    :cond_0
    :goto_0
    return-void

    .line 3839
    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v5, v2, :cond_2

    .line 3840
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 3842
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3843
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3846
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3848
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3850
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imm active  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getTargetView()Landroid/webkitsec/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    if-eq v5, v2, :cond_3

    .line 3853
    invoke-virtual {v0, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3862
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->SendInitComposing()V

    .line 3864
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 3865
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 3866
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3868
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 3871
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3872
    .local v1, "selectionType":I
    if-eq v5, v1, :cond_0

    .line 3873
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_0

    .line 3859
    .end local v1    # "selectionType":I
    :cond_3
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 1666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->getContentX(I)I

    move-result v2

    .line 1667
    .local v2, "contentX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->getContentY(I)I

    move-result v3

    .line 1668
    .local v3, "contentY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v4, v0

    .line 1669
    .local v4, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v5, v0

    .line 1670
    .local v5, "rawY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1672
    .local v1, "action":I
    const-string v0, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTouchEvent  MotionEvent Action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->isTouchedOutside(II)Z

    move-result v0

    if-ne v9, v0, :cond_1

    .line 1675
    const-string v0, "HtmlComposerView"

    const-string v7, "hasFocus() == false && isTouchedOutside() == true"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/4 v6, 0x0

    .line 1693
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, p0

    .line 1679
    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/HtmlComposerView;->handle_onTouchEvent(IIIII)Z

    move-result v6

    .line 1681
    .local v6, "ret":Z
    if-nez v6, :cond_0

    .line 1682
    const-string v0, "HtmlComposerView"

    const-string/jumbo v7, "onTouchEvent ret == false"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1685
    if-ne v9, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v9, v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1686
    const-string v0, "HtmlComposerView"

    const-string/jumbo v7, "onTouchEvent After MotionEvent.ACTION_UP, selection is caret!!"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1688
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1689
    invoke-virtual {p0, v9}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1978
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onWindowFocusChanged(Z)V

    .line 1980
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1981
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1983
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-nez v2, :cond_0

    .line 1984
    const-string v2, "HtmlComposerView"

    const-string v3, "false == isImageSelected "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1988
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1990
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1991
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->updateClipboardUI()V

    .line 1994
    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_2

    .line 1996
    invoke-virtual {p0, v7}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1998
    :cond_2
    if-nez p1, :cond_5

    .line 2000
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 2002
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_3

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_4

    .line 2004
    :cond_3
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 2005
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 2007
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 2008
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_4
    :goto_0
    return-void

    .line 2014
    :cond_5
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_6

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_b

    .line 2016
    :cond_6
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :cond_7
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged spanComposerText count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurSelStart= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurSelEnd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    sub-int v0, v2, v3

    .line 2022
    .local v0, "diff":I
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2031
    if-lez v0, :cond_d

    .line 2033
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v2, :cond_8

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gt v2, v3, :cond_8

    .line 2034
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2035
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2050
    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 2052
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 2053
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 2055
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v6, v2, :cond_9

    .line 2056
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 2057
    :cond_9
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_a

    .line 2058
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 2060
    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 2063
    .end local v0    # "diff":I
    :cond_b
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v6, v2, :cond_c

    .line 2064
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 2067
    :cond_c
    sget v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2068
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2069
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x500

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2072
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2037
    .end local v1    # "msg":Landroid/os/Message;
    .restart local v0    # "diff":I
    :cond_d
    if-nez v0, :cond_e

    .line 2038
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 2041
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2042
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2043
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1

    .line 2045
    :cond_e
    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 2046
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2047
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1
.end method

.method public outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imagetRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 5110
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 5111
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 5112
    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 5113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 5114
    .local v0, "re":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5116
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 5117
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5120
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 5121
    .local v1, "reh":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5123
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 5124
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p2, v2, v3}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 5128
    return-void
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 2263
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 2264
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2265
    return-void
.end method

.method public redo()V
    .locals 2

    .prologue
    .line 2268
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2269
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2270
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2271
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2272
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 2273
    return-void
.end method

.method public registerNotificationListener(Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .prologue
    .line 2276
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 2277
    return-void
.end method

.method public removeNotificationListener()V
    .locals 1

    .prologue
    .line 2280
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 2281
    return-void
.end method

.method public resetSelection()V
    .locals 2

    .prologue
    .line 3985
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3990
    :cond_0
    :goto_0
    return-void

    .line 3987
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3988
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22f

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public restoreSelection()V
    .locals 2

    .prologue
    .line 3993
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3999
    :cond_0
    :goto_0
    return-void

    .line 3995
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3996
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 3997
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    goto :goto_0
.end method

.method public saveSelection()V
    .locals 2

    .prologue
    .line 4002
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4006
    :cond_0
    :goto_0
    return-void

    .line 4004
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4005
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 2284
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2285
    return-void
.end method

.method public selectBWStartAndEnd(IIII)V
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I

    .prologue
    .line 4961
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4969
    :cond_0
    :goto_0
    return-void

    .line 4963
    :cond_1
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectBWStartAndEnd start = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], startY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endX = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4965
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4967
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4968
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v1

    const/16 v2, 0x22a

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public selectedType()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 4009
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4028
    :cond_0
    :goto_0
    return v3

    .line 4011
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4013
    .local v2, "selectedType":Ljava/lang/Integer;
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4014
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 4015
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4016
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4021
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4026
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4028
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 4018
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4026
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 4022
    :catch_0
    move-exception v0

    .line 4023
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 1136
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1137
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "removedCount"    # I
    .param p3, "addedCount"    # I
    .param p4, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1171
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1173
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1174
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 1175
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 1176
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 1177
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1178
    return-void
.end method

.method protected sendSelectionChangeEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 4990
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4991
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x504

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4992
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4994
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v1, :cond_0

    .line 4995
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4997
    :cond_0
    return-void
.end method

.method public setAutoTextSelection(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3156
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setAutoTextSelection(Z)V

    .line 3157
    return-void
.end method

.method public setCaretForEdit(Z)V
    .locals 4
    .param p1, "active"    # Z

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4032
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4045
    :cond_0
    :goto_0
    return-void

    .line 4034
    :cond_1
    if-eqz p1, :cond_2

    .line 4035
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4036
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 4039
    :cond_2
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4040
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4041
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 4042
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public setComposingRegion(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 4048
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4067
    :cond_0
    :goto_0
    return-void

    .line 4049
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 4051
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4052
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 4054
    .local v1, "sendTwoIntObj":Landroid/graphics/Point;
    monitor-enter v1

    .line 4055
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4056
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4061
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4066
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4058
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4062
    :catch_0
    move-exception v0

    .line 4063
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .param p1, "isInComposingState"    # Z

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 420
    :goto_0
    monitor-exit p0

    return-void

    .line 417
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorFromRangeSelection()V
    .locals 2

    .prologue
    .line 4074
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4080
    :cond_0
    :goto_0
    return-void

    .line 4076
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4077
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 4079
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0
.end method

.method public setDefaultFontSize(I)V
    .locals 3
    .param p1, "defaultFontSize"    # I

    .prologue
    .line 4083
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 4084
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    int-to-float v1, p1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultFontSize(I)V

    .line 4088
    :goto_0
    return-void

    .line 4086
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebSettings;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setEditableSelection(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 4091
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4110
    :cond_0
    :goto_0
    return-void

    .line 4092
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 4094
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4095
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 4097
    .local v1, "sendTwoIntObj":Landroid/graphics/Point;
    monitor-enter v1

    .line 4098
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4099
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4104
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4109
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4101
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4105
    :catch_0
    move-exception v0

    .line 4106
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setEmoji(Z)V
    .locals 3
    .param p1, "bIsActive"    # Z

    .prologue
    .line 4121
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 4123
    return-void
.end method

.method public setHCVSelectionChangedCallback(Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .prologue
    .line 4127
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 4128
    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .param p1, "imeOption"    # I

    .prologue
    .line 4132
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 4133
    return-void
.end method

.method protected setInputConnection(Landroid/webkitsec/HtmlComposerInputConnection;)V
    .locals 0
    .param p1, "ic"    # Landroid/webkitsec/HtmlComposerInputConnection;

    .prologue
    .line 564
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    .line 565
    return-void
.end method

.method public setLastKeyPadState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 6064
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 6065
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .param p1, "maxHtmlLength"    # I

    .prologue
    .line 4170
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 4171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 4172
    return-void
.end method

.method public setOnInsertedImageHitListener(Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .prologue
    .line 2294
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 2295
    return-void
.end method

.method public setOnRichTextFormatChangedListener(Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .prologue
    .line 2289
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 2290
    return-void
.end method

.method public setPageZoom(F)V
    .locals 3
    .param p1, "factor"    # F

    .prologue
    .line 4146
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4147
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageZoom factor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    :cond_0
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 4151
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4152
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebClipboard;->setZoomFactorForPasting(F)V

    .line 4153
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    if-gt v0, v2, :cond_3

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebClipboard;->setWidthForCopiedImage(I)V

    .line 4156
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4157
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x228

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4158
    :cond_2
    return-void

    .line 4153
    :cond_3
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    goto :goto_0
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 4161
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 4162
    return-void
.end method

.method public setRotationFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 6242
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 6243
    return-void
.end method

.method public setSelectionHandle(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 4136
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4137
    return-void
.end method

.method public setShiftKeyState(Z)V
    .locals 0
    .param p1, "bIsPressed"    # Z

    .prologue
    .line 4113
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 4114
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 4165
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clear()V

    .line 4166
    sget-object v0, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    .line 4167
    return-void
.end method

.method public textChangedForWatcher()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6114
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 6115
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6116
    :cond_0
    return-void
.end method

.method public textChangedForWatcher(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 6127
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 6128
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6130
    :cond_0
    return-void
.end method

.method public textChangedForWatcher(Z)V
    .locals 4
    .param p1, "isTextChanged"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6119
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 6120
    .local v0, "temp":I
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    .line 6122
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v3, ""

    invoke-interface {v2, v3, v1, v1, v0}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6124
    :cond_0
    return-void

    .end local v0    # "temp":I
    :cond_1
    move v0, v1

    .line 6119
    goto :goto_0
.end method

.method public textToSpeech(II)V
    .locals 2
    .param p1, "add"    # I
    .param p2, "remove"    # I

    .prologue
    .line 4204
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4205
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    .line 4206
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 4207
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "sendAccessbilityEvent [ 16]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEvent(I)V

    .line 4210
    :cond_1
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 2299
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2305
    :goto_0
    return-void

    .line 2302
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2303
    const-string v0, "Bold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 2308
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2314
    :goto_0
    return-void

    .line 2311
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2312
    const-string v0, "Italic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 2317
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2324
    :goto_0
    return-void

    .line 2320
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2321
    const-string v0, "Underline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2323
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public translate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 4176
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v3

    if-ne v6, v3, :cond_0

    .line 4177
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.translator.TRANSLATE_RESULT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4178
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4180
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4181
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4182
    const-string/jumbo v3, "mode"

    const-string v4, "input"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4183
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedHtmlText()Ljava/lang/String;

    move-result-object v2

    .line 4184
    .local v2, "selectedHTMLText":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4185
    const-string/jumbo v3, "source_text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4188
    const-string v3, "html_source_text"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4189
    const-string/jumbo v3, "use_broadcast_receiver"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "html_composer_view_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 4191
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "translate() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    const-string v3, "caller"

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4193
    const-string v3, "auto_start_translation"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4194
    const-string v3, "client_id"

    const-string v4, "2k8BjWu5Wc"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4195
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4197
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4199
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "selectedHTMLText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 2327
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 2328
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2329
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2330
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2331
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2332
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 2333
    return-void
.end method

.method public undoRedoStateReset()V
    .locals 2

    .prologue
    .line 4214
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4218
    :cond_0
    :goto_0
    return-void

    .line 4216
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4217
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public unmarkWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 3119
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->unmarkWord(Ljava/lang/String;)V

    .line 3120
    return-void
.end method

.method public updateIMSelectionToEditor(II)V
    .locals 2
    .param p1, "curSelStart"    # I
    .param p2, "curSelEnd"    # I

    .prologue
    .line 4221
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4225
    :cond_0
    :goto_0
    return-void

    .line 4223
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4224
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public updateOutlineDrawRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "imagetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 5141
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 5142
    return-void
.end method
