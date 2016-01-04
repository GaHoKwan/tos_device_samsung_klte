.class public final Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;,
        Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;
    }
.end annotation


# static fields
.field public static final BIND_MSG_REQUEST_IME_RECT:I = 0x2

.field public static final BIND_MSG_REQUEST_TARGET_RECT:I = 0x1

.field public static final BIND_MSG_RESULT_IME_CLOSED:I = 0x2

.field public static final BIND_MSG_RESULT_IME_OPENED:I = 0x1

.field public static final BIND_MSG_RESULT_WRITING_TYPE_IMAGE:I = 0x2

.field public static final BIND_MSG_RESULT_WRITING_TYPE_TEXT:I = 0x1

.field private static final CLIENT_SEQUENCE_MASK:I = 0xff

.field private static final CLIENT_UNIQUE_ID_MASK:I = -0x100

.field public static final CMD_ID_RECEIVE_ACTION_BUTTON:I = 0x2

.field public static final CMD_ID_WATCH_ACTION:I = 0x1

.field private static final DEBUG:Z

.field public static final FLAG_HELP_MODE:I = 0x4

.field public static final FLAG_IMAGE_WRITING:I = 0x1

.field public static final FLAG_MATH_WRITING:I = 0x2

.field public static final FLAG_MMS_MODE:I = 0x8

.field public static final FLAG_START_DRAWING_MODE:I = 0x10

.field private static final HELP_MODE_RESULT_CLOSED:Ljava/lang/String; = "CLOSED"

.field private static final HELP_MODE_RESULT_HOVERED:Ljava/lang/String; = "HOVERED"

.field private static final HELP_MODE_RESULT_HOVER_CANCELED:Ljava/lang/String; = "HOVER_CANCELED"

.field private static final HELP_MODE_RESULT_OPENED:Ljava/lang/String; = "OPENED"

.field private static final HELP_MODE_RESULT_TEXT_INSERTED:Ljava/lang/String; = "TEXT_INSERTED"

.field public static final IME_CMD_CANCEL_CLOSE:Ljava/lang/String; = "com.samsung.android.writingbuddy/CANCEL_CLOSE"

.field public static final IME_CMD_SEND_BINDER:Ljava/lang/String; = "com.samsung.android.writingbuddy/SEND_BINDER"

.field private static final MMS_DATA_DELETE:Ljava/lang/String; = "MMS_DATA_DELETE"

.field private static final MSG_CANCEL_WRITINGBUDDY_CUE:I = 0x7

.field private static final MSG_EDITOR_ACTION_DOWN:I = 0x8

.field private static final MSG_SERVICE_IMAGE_ADDED:I = 0x1

.field private static final MSG_SERVICE_RESULT_RECEIVED:I = 0x4

.field private static final MSG_SERVICE_TEXT_DELETED:I = 0x3

.field private static final MSG_SERVICE_TEXT_INSERTED:I = 0x2

.field private static final MSG_SERVICE_UPDATE_DIALOG:I = 0x9

.field private static final MSG_SERVICE_UPDATE_POSITION:I = 0x5

.field private static final MSG_SHOW_WRITINGBUDDY_CUE:I = 0x6

.field public static final PRIVATE_CMD_HELP_MODE:Ljava/lang/String; = "HELP_MODE"

.field public static final PRIVATE_CMD_RECEIVE_ACTION_BUTTON:Ljava/lang/String; = "RECEIVE_ACTION_BUTTON"

.field public static final PRIVATE_CMD_WACTH_ACTION:Ljava/lang/String; = "WATCH_ACTION"

.field public static final RESULT_FIELD_DELIMITER:Ljava/lang/String; = "//"

.field public static final RESULT_STRING_DELIMITER:Ljava/lang/String; = "//"

.field public static final SERVICE_CB_CLIENT_CHANGED:Ljava/lang/String; = "service_cb_client_changed"

.field public static final SERVICE_CB_CLOSED:Ljava/lang/String; = "service_cb_closed"

.field public static final SERVICE_CB_DRAWING_MODE_SET:Ljava/lang/String; = "service_cb_drawing_mode_set"

.field public static final SERVICE_CB_HELP_MODE_RESULT:Ljava/lang/String; = "service_cb_help_mode_result"

.field public static final SERVICE_CB_INFLATE_DONE:Ljava/lang/String; = "service_cb_inflate_done"

.field public static final SERVICE_CB_MATH_WRITING_RESULT:Ljava/lang/String; = "service_cb_math_writing_result"

.field public static final SERVICE_CB_MMS_DATA_DELETE:Ljava/lang/String; = "service_cb_mms_data_delete"

.field public static final SERVICE_CB_PERFORM_EDITOR_ACTION:Ljava/lang/String; = "service_cb_perform_editor_action"

.field public static final SERVICE_CB_WRITING_DONE:Ljava/lang/String; = "service_cb_writing_done"

.field private static final START_DELAY_TIME_MS:I = 0x96

.field private static final STATE_EVENT_SERVICE_CALLBACK_CLOSED:I = 0x2

.field private static final STATE_EVENT_SERVICE_CALLBACK_INFLATE_DONE:I = 0x1

.field private static final STATE_EVENT_TYPE_MOTION:I = 0x1

.field private static final STATE_EVENT_TYPE_SERVICE_CALLBACK:I = 0x2

.field private static final STATE_RESET_COUNT:I = 0x3

.field private static final STATE_STEP_STANDBY:I = 0x0

.field private static final STATE_STEP_WRITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WritingBuddyImpl"

.field public static final TEMPLATE_ALARM:I = 0xc

.field public static final TEMPLATE_ALARM_AM:I = 0xd

.field public static final TEMPLATE_ALARM_PM:I = 0xe

.field public static final TEMPLATE_CALCULATOR:I = 0x14

.field public static final TEMPLATE_DATEPICKER:I = 0x12

.field public static final TEMPLATE_DATEPICKER_NO_YEAR:I = 0x13

.field public static final TEMPLATE_DIALER:I = 0x15

.field public static final TEMPLATE_NONE:I = 0x0

.field public static final TEMPLATE_TIME:I = 0x1

.field public static final TEMPLATE_TIMEPICKER:I = 0xf

.field public static final TEMPLATE_TIMEPICKER_AM:I = 0x10

.field public static final TEMPLATE_TIMEPICKER_PM:I = 0x11

.field public static final TEMPLATE_TIMER:I = 0xb

.field public static final TYPE_BOARD_EDITOR:I = 0x1

.field public static final TYPE_BOARD_NONE:I = 0x0

.field public static final TYPE_BOARD_TEMPLATE:I = 0x2

.field public static final TYPE_EDITOR_DATETIME:I = 0x3

.field public static final TYPE_EDITOR_NONE:I = 0x0

.field public static final TYPE_EDITOR_NUMBER:I = 0x1

.field public static final TYPE_EDITOR_TEXT:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mBoardTemplate:I

.field private mBoardType:I

.field private mCanShowAutoCompletePopup:Z

.field private mCanStartWritingBuddy:Z

.field private mEditCount:I

.field private mEditorType:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreSizeChange:Z

.field private mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

.field private mInitRect:Landroid/graphics/Rect;

.field private mIsCursorBlinkDisabled:Z

.field private mIsHelpModeEnabled:Z

.field private mIsImageModePenDrawing:Z

.field private mIsImageWritingEnabled:Z

.field private mIsMathWritingEnabled:Z

.field private mIsMultiLineEditor:Z

.field private mIsPerformingAction:Z

.field private mIsPopupCueShowMSGCalled:Z

.field private mIsReceiveActionButtonEnabled:Z

.field private mIsWatchActionEnabled:Z

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mParentView:Landroid/view/View;

.field private mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

.field private mPrivateCMD:Ljava/lang/String;

.field private mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

.field mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

.field private mShowCnt:I

.field private mState:I

.field private mStateResetCnt:I

.field private mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

.field private mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

.field private mViewID:I

.field private mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

.field private mWBRect:Landroid/graphics/Rect;

.field private mWindowMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    .line 231
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    .line 247
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 249
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    .line 251
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    .line 253
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 255
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 257
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 259
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    .line 261
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    .line 265
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    .line 267
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 269
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    .line 271
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    .line 273
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    .line 1641
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$5;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1650
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    .line 1664
    iput v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    .line 2195
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$6;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->initVariable()V

    .line 348
    invoke-virtual {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setParentView(Landroid/view/View;)V

    .line 349
    if-eqz p1, :cond_0

    .line 350
    invoke-virtual {p1, p0}, Landroid/view/View;->setWritingBuddy(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    .line 353
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardType(I)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardType(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Lcom/samsung/android/writingbuddy/PopupCue;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/view/View;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method private canStartTemplateWritingBuddy(Z)Z
    .locals 10
    .param p1, "refresh"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1420
    iget-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 1422
    .local v2, "result":Z
    if-nez p1, :cond_0

    move v3, v2

    .line 1482
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 1427
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    move v2, v7

    .line 1430
    :goto_1
    if-eqz v2, :cond_1

    .line 1431
    iget-object v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_writing_buddy"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_6

    move v2, v7

    .line 1436
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1438
    .local v0, "context":Landroid/content/Context;
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getWindowMode()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    .line 1439
    if-eqz v0, :cond_2

    .line 1440
    invoke-virtual {v0}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1441
    instance-of v6, v0, Landroid/app/Activity;

    if-eqz v6, :cond_8

    .line 1442
    if-eqz v2, :cond_2

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    const/high16 v8, 0x2000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit8 v6, v6, 0xf

    if-nez v6, :cond_2

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_2

    .line 1445
    const/4 v2, 0x0

    .line 1456
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 1457
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1458
    .local v1, "p":Landroid/view/ViewParent;
    :goto_5
    if-eqz v1, :cond_3

    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    move-object v6, v1

    .line 1459
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1460
    const/4 v2, 0x0

    .line 1467
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_3
    if-eqz v2, :cond_4

    .line 1468
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_6
    invoke-direct {p0, v6, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v5

    .line 1469
    .local v5, "visibleRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_7
    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1472
    .local v4, "viewRect":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-eq v6, v7, :cond_4

    .line 1473
    const/4 v2, 0x0

    .line 1475
    sget-boolean v6, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "WritingBuddyImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VisibleRect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ViewRect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .end local v4    # "viewRect":Landroid/graphics/Rect;
    .end local v5    # "visibleRect":Landroid/graphics/Rect;
    :cond_4
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 1481
    const-string v6, "WritingBuddyImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canStartWritingBuddy() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1482
    .restart local v3    # "result":I
    goto/16 :goto_0

    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "result":I
    :cond_5
    move v2, v6

    .line 1427
    goto/16 :goto_1

    :cond_6
    move v2, v6

    .line 1431
    goto/16 :goto_2

    .line 1436
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1447
    .restart local v0    # "context":Landroid/content/Context;
    :cond_8
    instance-of v6, v0, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_2

    .line 1448
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v8, 0x800

    invoke-virtual {v6, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 1450
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1463
    .restart local v1    # "p":Landroid/view/ViewParent;
    :cond_9
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto/16 :goto_5

    .line 1468
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_6

    .line 1469
    .restart local v5    # "visibleRect":Landroid/graphics/Rect;
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_7
.end method

.method private canStartWritingBuddy(Z)Z
    .locals 14
    .param p1, "refresh"    # Z

    .prologue
    .line 1316
    iget-boolean v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 1318
    .local v5, "result":Z
    if-nez p1, :cond_0

    move v6, v5

    .line 1415
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 1323
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v5, 0x1

    .line 1326
    :goto_1
    if-eqz v5, :cond_1

    .line 1327
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "pen_writing_buddy"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    const/4 v5, 0x1

    .line 1332
    :cond_1
    :goto_2
    if-eqz v5, :cond_3

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v11, v11, Landroid/widget/EditText;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->isFocusable()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1333
    :cond_2
    const/4 v5, 0x0

    .line 1337
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1339
    .local v0, "context":Landroid/content/Context;
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getWindowMode()I

    move-result v11

    iput v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    .line 1340
    if-eqz v0, :cond_4

    .line 1341
    invoke-virtual {v0}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 1342
    instance-of v11, v0, Landroid/app/Activity;

    if-eqz v11, :cond_d

    .line 1343
    if-eqz v5, :cond_4

    iget v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    const/high16 v12, 0x2000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    iget v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit8 v11, v11, 0xf

    if-nez v11, :cond_4

    iget v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_4

    .line 1346
    const/4 v5, 0x0

    .line 1357
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 1358
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1359
    .local v3, "p":Landroid/view/ViewParent;
    :goto_5
    if-eqz v3, :cond_5

    instance-of v11, v3, Landroid/view/ViewGroup;

    if-eqz v11, :cond_5

    move-object v11, v3

    .line 1360
    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1361
    const/4 v5, 0x0

    .line 1369
    .end local v3    # "p":Landroid/view/ViewParent;
    :cond_5
    if-eqz v5, :cond_9

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v11, v11, Landroid/widget/EditText;

    if-eqz v11, :cond_9

    .line 1370
    new-instance v2, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v2}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1371
    .local v2, "ei":Landroid/view/inputmethod/EditorInfo;
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    .line 1372
    .local v4, "parent":Landroid/widget/EditText;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1375
    iget v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v11, 0xf

    .line 1376
    .local v1, "editorClass":I
    iget v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v7, v11, 0xff0

    .line 1378
    .local v7, "variation":I
    const/16 v11, 0x80

    if-eq v7, v11, :cond_6

    const/16 v11, 0x90

    if-eq v7, v11, :cond_6

    const/16 v11, 0xe0

    if-eq v7, v11, :cond_6

    const/4 v11, 0x2

    if-ne v1, v11, :cond_7

    const/16 v11, 0x10

    if-ne v7, v11, :cond_7

    .line 1382
    :cond_6
    const/4 v5, 0x0

    .line 1386
    :cond_7
    if-eqz v5, :cond_8

    iget-object v11, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v11, :cond_8

    iget-object v11, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v12, "com.samsung.android/disableDirectPenInput"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1388
    const/4 v5, 0x0

    .line 1392
    :cond_8
    iget v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v11, v11, 0xf

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    iget v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v12, 0x20000

    and-int/2addr v11, v12

    iput v11, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-lez v11, :cond_f

    const/4 v11, 0x1

    :goto_6
    iput-boolean v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    .line 1396
    if-eqz v5, :cond_9

    iget-boolean v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_9

    .line 1397
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_7
    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v10

    .line 1398
    .local v10, "visibleRect":Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_8
    invoke-direct {p0, v11}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1401
    .local v8, "viewRect":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float v9, v11, v12

    .line 1403
    .local v9, "visibleRatio":F
    const v11, 0x3e4ccccd    # 0.2f

    cmpg-float v11, v9, v11

    if-gez v11, :cond_9

    .line 1404
    const/4 v5, 0x0

    .line 1406
    const-string v11, "WritingBuddyImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "View is scrolled."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    .end local v1    # "editorClass":I
    .end local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "parent":Landroid/widget/EditText;
    .end local v7    # "variation":I
    .end local v8    # "viewRect":Landroid/graphics/Rect;
    .end local v9    # "visibleRatio":F
    .end local v10    # "visibleRect":Landroid/graphics/Rect;
    :cond_9
    iput-boolean v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanStartWritingBuddy:Z

    .line 1414
    const-string v11, "WritingBuddyImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canStartWritingBuddy() : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1415
    .restart local v6    # "result":I
    goto/16 :goto_0

    .line 1323
    .end local v0    # "context":Landroid/content/Context;
    .end local v6    # "result":I
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1327
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1337
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1348
    .restart local v0    # "context":Landroid/content/Context;
    :cond_d
    instance-of v11, v0, Landroid/content/ContextWrapper;

    if-eqz v11, :cond_4

    .line 1349
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x800

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 1351
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1364
    .restart local v3    # "p":Landroid/view/ViewParent;
    :cond_e
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto/16 :goto_5

    .line 1392
    .end local v3    # "p":Landroid/view/ViewParent;
    .restart local v1    # "editorClass":I
    .restart local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v4    # "parent":Landroid/widget/EditText;
    .restart local v7    # "variation":I
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 1397
    :cond_10
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_7

    .line 1398
    .restart local v10    # "visibleRect":Landroid/graphics/Rect;
    :cond_11
    iget-object v11, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_8
.end method

.method private closeWritingBuddy(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 1304
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1307
    :catch_0
    move-exception v0

    .line 1308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    const-string v2, "Can not close WritingBuddy, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createPopupCue()V
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v0, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1016
    :cond_0
    new-instance v0, Lcom/samsung/android/writingbuddy/PopupCue;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    .line 1019
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    new-instance v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$3;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    new-instance v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$4;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/PopupCue;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method private dismissPopupCue(Z)Z
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    .line 1496
    const-string v1, "WritingBuddyImpl"

    const-string v2, "dismissPopupCue()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const/4 v0, 0x0

    .line 1502
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1504
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v1, :cond_2

    .line 1509
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1510
    const/4 v0, 0x1

    .line 1513
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1, p1}, Lcom/samsung/android/writingbuddy/PopupCue;->dismiss(Z)V

    .line 1516
    :cond_2
    return v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1946
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1947
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    .line 1954
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    return-object v0

    .line 1949
    :cond_1
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Attempting to create Handler from background thread."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$WBHandler;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private getModeFlag()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 435
    const/4 v1, 0x0

    .line 437
    .local v1, "flag":I
    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    if-eqz v4, :cond_0

    .line 438
    or-int/lit8 v1, v1, 0x1

    .line 441
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMathWritingEnabled:Z

    if-eqz v4, :cond_1

    .line 442
    or-int/lit8 v1, v1, 0x2

    .line 445
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    if-eqz v4, :cond_2

    .line 446
    or-int/lit8 v1, v1, 0x4

    .line 449
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_4

    .line 450
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 451
    .local v0, "b":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 452
    const-string v4, "isMmsMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 453
    .local v2, "isMmsMode":Z
    if-eqz v2, :cond_5

    .line 454
    or-int/lit8 v1, v1, 0x8

    .line 461
    :cond_3
    :goto_0
    const-string v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 462
    .local v3, "isStartDrawingMode":Z
    if-eqz v3, :cond_6

    .line 463
    or-int/lit8 v1, v1, 0x10

    .line 464
    const-string v4, "isStartDrawingMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 472
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "isMmsMode":Z
    .end local v3    # "isStartDrawingMode":Z
    :cond_4
    :goto_1
    return v1

    .line 456
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v2    # "isMmsMode":Z
    :cond_5
    and-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 457
    xor-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 466
    .restart local v3    # "isStartDrawingMode":Z
    :cond_6
    and-int/lit8 v4, v1, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    .line 467
    xor-int/lit8 v1, v1, 0x10

    goto :goto_1
.end method

.method private getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1988
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1990
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 1991
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 1992
    .local v0, "locInWindow":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1993
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1995
    .end local v0    # "locInWindow":[I
    :cond_0
    return-object v1

    .line 1991
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1977
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1979
    .local v1, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 1980
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 1981
    .local v0, "locOnScr":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1982
    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1984
    .end local v0    # "locOnScr":[I
    :cond_0
    return-object v1

    .line 1980
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getTargetWBRect(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 627
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    .line 1999
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 2001
    .local v4, "r":Landroid/graphics/Rect;
    move-object/from16 v8, p1

    .line 2002
    .local v8, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2004
    .local v9, "vp":Landroid/view/ViewParent;
    const/4 v7, 0x0

    .line 2005
    .local v7, "top":I
    const/4 v0, 0x0

    .line 2006
    .local v0, "bottomDiff":I
    const/4 v2, 0x0

    .line 2007
    .local v2, "left":I
    const/4 v5, 0x0

    .line 2009
    .local v5, "rightDiff":I
    :goto_0
    instance-of v12, v9, Landroid/view/View;

    if-eqz v12, :cond_9

    move-object v3, v9

    .line 2010
    check-cast v3, Landroid/view/View;

    .line 2013
    .local v3, "parent":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 2014
    .local v11, "y":I
    add-int/2addr v7, v11

    .line 2016
    if-gez v11, :cond_0

    .line 2017
    if-gez v7, :cond_0

    .line 2018
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 2019
    const/4 v7, 0x0

    .line 2023
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    if-lez v12, :cond_1

    .line 2024
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    if-le v12, v7, :cond_5

    .line 2025
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v13, v7

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 2026
    const/4 v7, 0x0

    .line 2039
    :cond_1
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int v1, v12, v13

    .line 2040
    .local v1, "bottomPosY":I
    add-int v12, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 2041
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int v13, v1, v0

    sub-int/2addr v12, v13

    neg-int v0, v12

    .line 2047
    :goto_2
    if-eqz p2, :cond_4

    .line 2049
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 2050
    .local v10, "x":I
    add-int/2addr v2, v10

    .line 2052
    if-gez v10, :cond_2

    .line 2053
    if-gez v2, :cond_2

    .line 2054
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 2055
    const/4 v2, 0x0

    .line 2059
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    if-lez v12, :cond_3

    .line 2060
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    if-le v12, v2, :cond_7

    .line 2061
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int/2addr v13, v2

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 2062
    const/4 v2, 0x0

    .line 2069
    :cond_3
    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int v6, v12, v13

    .line 2070
    .local v6, "rightPosX":I
    add-int v12, v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_8

    .line 2071
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int v13, v6, v5

    sub-int/2addr v12, v13

    neg-int v5, v12

    .line 2078
    .end local v6    # "rightPosX":I
    .end local v10    # "x":I
    :cond_4
    :goto_4
    move-object v8, v3

    .line 2079
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2080
    goto/16 :goto_0

    .line 2028
    .end local v1    # "bottomPosY":I
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v7, v12

    goto :goto_1

    .line 2043
    .restart local v1    # "bottomPosY":I
    :cond_6
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    add-int v13, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 2044
    const/4 v0, 0x0

    goto :goto_2

    .line 2064
    .restart local v10    # "x":I
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v2, v12

    goto :goto_3

    .line 2073
    .restart local v6    # "rightPosX":I
    :cond_8
    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int v13, v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 2074
    const/4 v5, 0x0

    goto :goto_4

    .line 2082
    .end local v1    # "bottomPosY":I
    .end local v3    # "parent":Landroid/view/View;
    .end local v6    # "rightPosX":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_9
    sget-boolean v12, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "WritingBuddyImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getVisibleRectInWindow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :cond_a
    return-object v4
.end method

.method private getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "chechkWidth"    # Z

    .prologue
    .line 2087
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 2089
    .local v4, "r":Landroid/graphics/Rect;
    move-object/from16 v8, p1

    .line 2090
    .local v8, "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2092
    .local v9, "vp":Landroid/view/ViewParent;
    const/4 v7, 0x0

    .line 2093
    .local v7, "top":I
    const/4 v0, 0x0

    .line 2094
    .local v0, "bottomDiff":I
    const/4 v2, 0x0

    .line 2095
    .local v2, "left":I
    const/4 v5, 0x0

    .line 2097
    .local v5, "rightDiff":I
    :goto_0
    instance-of v12, v9, Landroid/view/View;

    if-eqz v12, :cond_9

    move-object v3, v9

    .line 2098
    check-cast v3, Landroid/view/View;

    .line 2101
    .local v3, "parent":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 2102
    .local v11, "y":I
    add-int/2addr v7, v11

    .line 2104
    if-gez v11, :cond_0

    .line 2105
    if-gez v7, :cond_0

    .line 2106
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 2107
    const/4 v7, 0x0

    .line 2111
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    if-lez v12, :cond_1

    .line 2112
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    if-le v12, v7, :cond_5

    .line 2113
    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v13, v7

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->top:I

    .line 2114
    const/4 v7, 0x0

    .line 2127
    :cond_1
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int v1, v12, v13

    .line 2128
    .local v1, "bottomPosY":I
    add-int v12, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 2129
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int v13, v1, v0

    sub-int/2addr v12, v13

    neg-int v0, v12

    .line 2135
    :goto_2
    if-eqz p2, :cond_4

    .line 2137
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 2138
    .local v10, "x":I
    add-int/2addr v2, v10

    .line 2140
    if-gez v10, :cond_2

    .line 2141
    if-gez v2, :cond_2

    .line 2142
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 2143
    const/4 v2, 0x0

    .line 2147
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    if-lez v12, :cond_3

    .line 2148
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    if-le v12, v2, :cond_7

    .line 2149
    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int/2addr v13, v2

    add-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 2150
    const/4 v2, 0x0

    .line 2157
    :cond_3
    :goto_3
    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int v6, v12, v13

    .line 2158
    .local v6, "rightPosX":I
    add-int v12, v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_8

    .line 2159
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int v13, v6, v5

    sub-int/2addr v12, v13

    neg-int v5, v12

    .line 2166
    .end local v6    # "rightPosX":I
    .end local v10    # "x":I
    :cond_4
    :goto_4
    move-object v8, v3

    .line 2167
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 2168
    goto/16 :goto_0

    .line 2116
    .end local v1    # "bottomPosY":I
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v12

    sub-int/2addr v7, v12

    goto :goto_1

    .line 2131
    .restart local v1    # "bottomPosY":I
    :cond_6
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    add-int v13, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    .line 2132
    const/4 v0, 0x0

    goto :goto_2

    .line 2152
    .restart local v10    # "x":I
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v2, v12

    goto :goto_3

    .line 2161
    .restart local v6    # "rightPosX":I
    :cond_8
    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int v13, v6, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 2162
    const/4 v5, 0x0

    goto :goto_4

    .line 2170
    .end local v1    # "bottomPosY":I
    .end local v3    # "parent":Landroid/view/View;
    .end local v6    # "rightPosX":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_9
    sget-boolean v12, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "WritingBuddyImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getVisibleRectOnScreen : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :cond_a
    return-object v4
.end method

.method private getWindowMode()I
    .locals 2

    .prologue
    .line 1929
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1931
    .local v0, "context":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_1

    .line 1932
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1933
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowMode()I

    move-result v1

    .line 1940
    :goto_1
    return v1

    .line 1929
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1940
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    const/high16 v1, 0x1000000

    goto :goto_1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1564
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1605
    :goto_0
    :pswitch_0
    return-void

    .line 1566
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onImageInserted(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1570
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    .line 1571
    .local v4, "text":Ljava/lang/CharSequence;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1572
    .local v5, "where":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1573
    .local v1, "nextCursor":I
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onTextInserted(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 1577
    .end local v1    # "nextCursor":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "where":I
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1578
    .local v3, "start":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1579
    .local v0, "end":I
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onTextDeleted(II)V

    goto :goto_0

    .line 1583
    .end local v0    # "end":I
    .end local v3    # "start":I
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1584
    .local v2, "result":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onResultReceived(Landroid/os/Bundle;I)V

    goto :goto_0

    .line 1588
    .end local v2    # "result":Landroid/os/Bundle;
    :pswitch_5
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->notifyPositionChanged(I)V

    goto :goto_0

    .line 1592
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->showWritingBuddyCue()V

    goto :goto_0

    .line 1596
    :pswitch_7
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    goto :goto_0

    .line 1600
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->onUpdateDialog()V

    goto :goto_0

    .line 1564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private initVariable()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    .line 366
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 368
    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    .line 370
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    .line 372
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 376
    invoke-virtual {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardType(I)V

    .line 378
    invoke-virtual {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setEditorType(I)V

    .line 380
    invoke-virtual {p0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setBoardTemplate(I)V

    .line 381
    return-void
.end method

.method private isWBRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 617
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pointInView(FF)Z
    .locals 1
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method private pointInView(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "localX"    # F
    .param p3, "localY"    # F

    .prologue
    const/4 v2, 0x0

    .line 1972
    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    cmpl-float v0, p3, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerEventListener(Landroid/view/View;)V
    .locals 1
    .param p1, "servedView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$1;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 593
    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$2;-><init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 600
    return-void
.end method

.method private registerPositionChangeListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1625
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v1, v2, :cond_1

    .line 1627
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1628
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWBPositionListenerEnalbed(Z)V

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1632
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1633
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1634
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1635
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method

.method private resetPenPointerIcon()V
    .locals 3

    .prologue
    .line 1000
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 712
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 714
    iput-boolean v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->unregisterPositionChangeListener()V

    .line 718
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    .line 720
    const-string v0, "WritingBuddyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report current WB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 724
    iput v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    .line 725
    iput v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    .line 726
    return-void
.end method

.method private scheduleState(IILandroid/view/MotionEvent;I)Z
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 1669
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1670
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z

    move-result v0

    .line 1672
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method private scheduleStateForEditor(IILandroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 1684
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    .line 1685
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1686
    .local v1, "clientViewID":I
    move v4, p4

    .line 1688
    .local v4, "receivedClientID":I
    if-ne v1, v4, :cond_0

    .line 1689
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 1692
    :cond_0
    const-string v7, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/4 v6, 0x0

    .line 1793
    .end local v1    # "clientViewID":I
    .end local v4    # "receivedClientID":I
    :goto_2
    return v6

    .line 1692
    .restart local v1    # "clientViewID":I
    .restart local v4    # "receivedClientID":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1700
    .end local v1    # "clientViewID":I
    .end local v4    # "receivedClientID":I
    :cond_3
    const/4 v5, 0x1

    .line 1702
    .local v5, "showLog":Z
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-nez v6, :cond_c

    .line 1703
    const/4 v6, 0x1

    if-ne p1, v6, :cond_5

    .line 1704
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1705
    .local v0, "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_7

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1707
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1708
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1709
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 1733
    :cond_4
    :goto_3
    const/4 v6, 0x7

    if-ne v0, v6, :cond_5

    .line 1734
    const/4 v5, 0x0

    .line 1787
    .end local v0    # "action":I
    :cond_5
    :goto_4
    if-eqz v5, :cond_6

    .line 1788
    const-string v7, "WritingBuddyImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1711
    .restart local v0    # "action":I
    :cond_7
    const/16 v6, 0xa

    if-ne v0, v6, :cond_a

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1712
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 1713
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(FF)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1714
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1716
    const-string v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1718
    :cond_8
    if-eqz v2, :cond_9

    const/4 v6, -0x1

    const/16 v7, -0x100

    const/16 v8, 0x140

    invoke-virtual {v2, v6, v7, v8}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v6

    if-nez v6, :cond_9

    .line 1719
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1721
    const-string v6, "HOVER_CANCELED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1725
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x7

    const-wide/16 v8, 0x28

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1727
    .end local v2    # "im":Landroid/hardware/input/InputManager;
    :cond_a
    if-nez v0, :cond_b

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1728
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    goto/16 :goto_3

    .line 1729
    :cond_b
    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartWritingBuddy(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1730
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x8

    const-wide/16 v8, 0x1e

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1737
    .end local v0    # "action":I
    :cond_c
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 1738
    const/4 v6, 0x1

    if-ne p1, v6, :cond_d

    .line 1739
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1741
    .restart local v0    # "action":I
    const/16 v6, 0x9

    if-ne v0, v6, :cond_d

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    const/4 v7, 0x3

    if-le v6, v7, :cond_d

    .line 1742
    const-string v6, "WritingBuddyImpl"

    const-string v7, "Reset state"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    .line 1744
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 1747
    .end local v0    # "action":I
    :cond_d
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    .line 1748
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    .line 1751
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    .line 1754
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetPenPointerIcon()V

    .line 1757
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_e

    .line 1758
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 1762
    :cond_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 1763
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_10

    .line 1764
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1770
    :goto_7
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_f

    .line 1771
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 1772
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    .line 1776
    :cond_f
    const-string v6, "OPENED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 1779
    const-string v6, "OPENED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;)V

    .line 1782
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x5

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 1766
    :cond_10
    const-string v6, "WritingBuddyImpl"

    const-string v7, "Can not find IMM"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1788
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_6
.end method

.method private scheduleStateForTemplate(IILandroid/view/MotionEvent;I)Z
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "event"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "arg1"    # I

    .prologue
    .line 1797
    invoke-static {p3}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->isDuplicated(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1798
    const/4 v4, 0x0

    .line 1898
    :goto_0
    return v4

    .line 1801
    :cond_0
    const/4 v3, 0x1

    .line 1804
    .local v3, "showLog":Z
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 1805
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    .line 1806
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 1808
    const-string v5, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/4 v4, 0x0

    goto :goto_0

    .line 1808
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1815
    :cond_2
    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-nez v4, :cond_c

    .line 1816
    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    .line 1817
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1818
    .local v0, "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_6

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1820
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1821
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1822
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 1852
    :cond_3
    :goto_2
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 1853
    const/4 v3, 0x0

    .line 1894
    .end local v0    # "action":I
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 1895
    const-string v5, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ". "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1824
    .restart local v0    # "action":I
    :cond_6
    const/16 v4, 0xa

    if-ne v0, v4, :cond_a

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1825
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 1826
    .local v1, "im":Landroid/hardware/input/InputManager;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->pointInView(FF)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1827
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1829
    const-string v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1831
    :cond_7
    if-eqz v1, :cond_8

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x140

    invoke-virtual {v1, v4, v5, v6}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v4

    if-nez v4, :cond_8

    .line 1832
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1834
    const-string v4, "HOVER_CANCELED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1836
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v4}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1838
    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardTemplate:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_9

    .line 1839
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1841
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/writingbuddy/PopupCue;->isPointInPopup(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1842
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1846
    .end local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_a
    if-nez v0, :cond_b

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1847
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    goto/16 :goto_2

    .line 1848
    :cond_b
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->canStartTemplateWritingBuddy(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1849
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1856
    .end local v0    # "action":I
    :cond_c
    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1857
    const/4 v4, 0x1

    if-ne p1, v4, :cond_d

    .line 1858
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1860
    .restart local v0    # "action":I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    .line 1861
    const-string v4, "WritingBuddyImpl"

    const-string v5, "Reset state"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mStateResetCnt:I

    .line 1863
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    goto/16 :goto_3

    .line 1865
    .end local v0    # "action":I
    :cond_d
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 1866
    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 1869
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    .line 1872
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1873
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_e

    .line 1874
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1880
    :goto_5
    const-string v4, "OPENED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 1883
    const-string v4, "OPENED"

    invoke-direct {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;)V

    .line 1886
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetPenPointerIcon()V

    .line 1889
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1876
    :cond_e
    const-string v4, "WritingBuddyImpl"

    const-string v5, "Can not find IMM"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1895
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_4
.end method

.method private sendActionButtonResult(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    const/4 v3, 0x2

    .line 979
    iget-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsReceiveActionButtonEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    if-eqz v1, :cond_0

    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, "actionString":Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 983
    const-string v0, "ACTION_SEND"

    .line 994
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;->onPrivateCommand(ILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    .line 996
    .end local v0    # "actionString":Ljava/lang/String;
    :cond_0
    return-void

    .line 984
    .restart local v0    # "actionString":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 985
    const-string v0, "ACTION_SEARCH"

    goto :goto_0

    .line 986
    :cond_2
    if-ne p1, v3, :cond_3

    .line 987
    const-string v0, "ACTION_GO"

    goto :goto_0

    .line 988
    :cond_3
    const/16 v1, 0xf

    if-ne p1, v1, :cond_4

    .line 989
    const-string v0, "ACTION_IMAGE"

    goto :goto_0

    .line 991
    :cond_4
    const-string v0, "ACTION_DONE"

    goto :goto_0
.end method

.method private sendHelpModeResult(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 964
    :cond_0
    return-void
.end method

.method private sendMMSDataDelete(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 970
    :cond_0
    return-void
.end method

.method private sendWatchActionResult(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/CharSequence;

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWatchActionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;->onPrivateCommand(ILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    .line 976
    :cond_0
    return-void
.end method

.method private setupInRuntime()Z
    .locals 4

    .prologue
    .line 384
    const/4 v1, 0x1

    .line 386
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-nez v2, :cond_0

    .line 387
    const-string/jumbo v2, "writingbuddymanagerservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 388
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 391
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-nez v2, :cond_1

    .line 392
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Failed to get WritingBuddyService"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v1, 0x0

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    .line 398
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 400
    return v1
.end method

.method private showWritingBuddy()Z
    .locals 27

    .prologue
    .line 1132
    const/16 v26, 0x0

    .line 1134
    .local v26, "result":Z
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    const/4 v1, 0x0

    .line 1299
    :goto_0
    return v1

    .line 1138
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 1139
    .local v5, "wndToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 1141
    .local v4, "appToken":Landroid/os/IBinder;
    const/4 v6, 0x0

    .line 1142
    .local v6, "wndRect":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 1143
    .local v7, "scrRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 1145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 1151
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 1152
    new-instance v9, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v9}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1153
    .local v9, "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v10, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v10}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1155
    .local v10, "ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v25, v0

    check-cast v25, Landroid/widget/EditText;

    .line 1157
    .local v25, "parent":Landroid/widget/EditText;
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v1, v9}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    .line 1158
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->getWBTextBuffer(Z)Ljava/lang/CharSequence;

    .line 1162
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 1165
    .end local v25    # "parent":Landroid/widget/EditText;
    :cond_2
    iget-object v1, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1169
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v10, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 1171
    iget-object v1, v10, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "hasFocus"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1175
    :cond_4
    iget v1, v10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v1, 0xff0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_d

    const-string v1, "com.sec.android.app.sbrowser"

    iget-object v2, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1177
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    .line 1178
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    .line 1184
    :goto_4
    const/4 v8, 0x0

    .line 1185
    .local v8, "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v8

    .line 1199
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    shl-int/lit8 v1, v1, 0x14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1200
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1202
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getModeFlag()I

    move-result v11

    .line 1203
    .local v11, "flag":I
    and-int/lit8 v1, v11, 0x8

    if-eqz v1, :cond_5

    .line 1205
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->dismissPopupCue(Z)Z

    .line 1209
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

    invoke-interface {v3}, Lcom/samsung/android/writingbuddy/IWritingBuddyClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface/range {v1 .. v11}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    .line 1211
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWritingBuddy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    .line 1215
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report current WB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->registerPositionChangeListener()V

    .line 1221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_6

    .line 1222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hideCursorControllers()V

    .line 1225
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 1226
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    const/16 v26, 0x1

    .line 1297
    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    .end local v9    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v10    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v11    # "flag":I
    :cond_7
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    const-wide/16 v12, 0x3e8

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move/from16 v1, v26

    .line 1299
    goto/16 :goto_0

    .line 1144
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 1145
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto/16 :goto_2

    .line 1146
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 1148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v7

    goto/16 :goto_3

    .line 1147
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_7

    .line 1148
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_8

    .line 1180
    .restart local v9    # "et":Landroid/view/inputmethod/ExtractedText;
    .restart local v10    # "ei":Landroid/view/inputmethod/EditorInfo;
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    goto/16 :goto_4

    .line 1188
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    :cond_e
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1189
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v8, Landroid/graphics/Rect;->right:I

    .line 1190
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .line 1229
    .restart local v11    # "flag":I
    :catch_0
    move-exception v24

    .line 1230
    .local v24, "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start WritingBuddy, RemoteException happened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 1233
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 1235
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 1237
    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    .end local v9    # "et":Landroid/view/inputmethod/ExtractedText;
    .end local v10    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v11    # "flag":I
    .end local v24    # "e":Landroid/os/RemoteException;
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1238
    new-instance v9, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v9}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1240
    .restart local v9    # "et":Landroid/view/inputmethod/ExtractedText;
    new-instance v10, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v10}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 1241
    .restart local v10    # "ei":Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditorType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 1242
    const/4 v1, 0x2

    iput v1, v10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1246
    :goto_9
    const/4 v1, 0x6

    iput v1, v10, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    if-eqz v1, :cond_10

    .line 1251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    iget-object v2, v9, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;->onTextUpdated(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1255
    :cond_10
    const/4 v8, 0x0

    .line 1256
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/PopupCue;->getRectInAnchor()Landroid/graphics/Rect;

    move-result-object v8

    .line 1264
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    shl-int/lit8 v1, v1, 0x14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    and-int/lit16 v2, v2, 0xfff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1265
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mShowCnt:I

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    .line 1267
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getModeFlag()I

    move-result v11

    .line 1270
    .restart local v11    # "flag":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->hideCursorControllers(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1271
    const-string v1, "WritingBuddyImpl"

    const-string v2, "hideCursorControllers "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mServiceCallback:Lcom/samsung/android/writingbuddy/IWritingBuddyClient;

    invoke-interface {v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyClient;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardTemplate:I

    move/from16 v20, v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    invoke-interface/range {v12 .. v23}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->showTemplate(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    .line 1277
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWritingBuddy. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    .line 1281
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report current WB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1285
    const/16 v26, 0x1

    goto/16 :goto_6

    .line 1244
    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    .end local v11    # "flag":I
    :cond_12
    const/4 v1, 0x1

    iput v1, v10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_9

    .line 1259
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    :cond_13
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "aniInitRect":Landroid/graphics/Rect;
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1260
    .restart local v8    # "aniInitRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v8, Landroid/graphics/Rect;->right:I

    .line 1261
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_a

    .line 1286
    .restart local v11    # "flag":I
    :catch_1
    move-exception v24

    .line 1287
    .restart local v24    # "e":Landroid/os/RemoteException;
    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start WritingBuddy, RemoteException happened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->resetState()V

    .line 1292
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private showWritingBuddyCue()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1075
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1076
    iput-boolean v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 1079
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    .line 1080
    .local v1, "isShown":Z
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1081
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v1

    .line 1085
    :cond_1
    if-nez v1, :cond_2

    .line 1086
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Caencel to show writingbuddy cue."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :goto_0
    return-void

    .line 1091
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->createPopupCue()V

    .line 1093
    const/4 v0, 0x0

    .line 1094
    .local v0, "cueType":I
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v2, v3, :cond_4

    .line 1095
    iget-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMultiLineEditor:Z

    if-eqz v2, :cond_3

    .line 1096
    const/4 v0, 0x2

    .line 1105
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v2, v0}, Lcom/samsung/android/writingbuddy/PopupCue;->show(I)V

    .line 1108
    const-string v2, "HOVERED"

    invoke-direct {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1098
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1101
    :cond_4
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private unregisterPositionChangeListener()V
    .locals 3

    .prologue
    .line 1608
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1611
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWBPositionListenerEnalbed(Z)V

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1615
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1617
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowAutoCompletePopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1488
    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-ne v1, v0, :cond_0

    .line 1489
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 1492
    :cond_0
    return v0
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 3
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1960
    move-object v0, p2

    .line 1961
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    .line 1962
    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1964
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Finish WritingBuddy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Cancel finish."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    goto :goto_0
.end method

.method public finish(Z)V
    .locals 3
    .param p1, "immediate"    # Z

    .prologue
    .line 676
    const-string v0, "WritingBuddyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorType()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditorType:I

    return v0
.end method

.method public getExpectedTargetWBRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getTargetWBRect(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getImageModePenDrawing()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    return v0
.end method

.method public getTargetWBRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1556
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1560
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p2, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleState(IILandroid/view/MotionEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public handleWindowFocusChanged(Z)Z
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 1524
    if-nez p1, :cond_3

    .line 1526
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v0}, Lcom/samsung/android/writingbuddy/PopupCue;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    invoke-virtual {v0, v2}, Lcom/samsung/android/writingbuddy/PopupCue;->dismiss(Z)V

    .line 1528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    .line 1532
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1533
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1534
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPopupCueShowMSGCalled:Z

    .line 1538
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->isWBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1539
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWindowMode:I

    and-int/2addr v0, v3

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getWindowMode()I

    move-result v1

    and-int/2addr v1, v3

    if-eq v0, v1, :cond_2

    .line 1540
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Window mode changed."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-virtual {p0, v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish(Z)V

    .line 1551
    :cond_2
    :goto_0
    return v2

    .line 1546
    :cond_3
    iget v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->isWBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1547
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Update."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public notifyPositionChanged(I)V
    .locals 8
    .param p1, "what"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 523
    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyPositionChanged code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-eqz v3, :cond_0

    .line 526
    const/4 v2, 0x0

    .line 527
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 528
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v3, v6, :cond_3

    .line 529
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 530
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 537
    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIgnoreSizeChange:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 552
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_0
    :goto_3
    return-void

    .line 529
    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 530
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 532
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 533
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    .line 532
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_4

    .line 533
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_5

    .line 542
    :cond_6
    sget-boolean v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update Position. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v3, :cond_0

    .line 546
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyImpl"

    const-string v4, "Can not start WritingBuddy, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public onImageInserted(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 738
    if-nez p1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;->onImageReceived(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onResultReceived(Landroid/os/Bundle;I)V
    .locals 13
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "receivedClientID"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 802
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " receivedClientID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " current ClientID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    if-nez p1, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    const-string/jumbo v6, "service_cb_client_changed"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_6

    .line 811
    const-string v6, "WritingBuddyImpl"

    const-string/jumbo v9, "onResultReceived SERVICE_CB_CLIENT_CHANGED "

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_4

    .line 815
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    if-eqz v6, :cond_2

    .line 816
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->stopCursorBlink(Z)V

    .line 817
    iput-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsCursorBlinkDisabled:Z

    .line 820
    :cond_2
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-ne v6, v7, :cond_3

    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 822
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->applyWBTextBuffer(Z)Z

    .line 826
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setWBTextBuffer(Ljava/lang/CharSequence;)V

    .line 827
    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 831
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 832
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->reportCurrentWritingBuddyView(Landroid/view/View;)V

    .line 833
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Report current WB : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->unregisterPositionChangeListener()V

    .line 837
    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    .line 841
    :cond_6
    const-string/jumbo v6, "service_cb_inflate_done"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    .line 842
    const-string v6, "WritingBuddyImpl"

    const-string/jumbo v9, "onResultReceived SERVICE_CB_INFLATE_DONE "

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-direct {p0, v12, v7, v11, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleState(IILandroid/view/MotionEvent;I)Z

    .line 847
    :cond_7
    const-string/jumbo v6, "service_cb_writing_done"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 848
    .local v5, "resultValue":I
    if-lez v5, :cond_a

    .line 849
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_WRITING_DONE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iput-boolean v7, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mCanShowAutoCompletePopup:Z

    .line 853
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_a

    .line 855
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_11

    move v4, v7

    .line 856
    .local v4, "isShown":Z
    :goto_1
    if-eqz v4, :cond_8

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_8

    .line 857
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v4

    .line 860
    :cond_8
    iget v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    if-lez v6, :cond_9

    if-eqz v4, :cond_9

    .line 861
    if-ne v5, v7, :cond_12

    move v3, v7

    .line 862
    .local v3, "initBuffer":Z
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->applyWBTextBuffer(Z)Z

    .line 866
    .end local v3    # "initBuffer":Z
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setWBTextBuffer(Ljava/lang/CharSequence;)V

    .line 867
    iput v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 872
    .end local v4    # "isShown":Z
    :cond_a
    const-string/jumbo v6, "service_cb_perform_editor_action"

    const/4 v9, -0x1

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 873
    .local v2, "editorAction":I
    if-ltz v2, :cond_c

    .line 874
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_b

    .line 875
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_PERFORM_EDITOR_ACTION "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iput-boolean v7, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    .line 877
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->performWBEditorAction(I)V

    .line 878
    iput-boolean v8, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsPerformingAction:Z

    .line 882
    :cond_b
    invoke-direct {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendActionButtonResult(I)V

    .line 886
    :cond_c
    const-string/jumbo v6, "service_cb_closed"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_d

    .line 887
    const-string v6, "WritingBuddyImpl"

    const-string/jumbo v9, "onResultReceived SERVICE_CB_CLOSED "

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-direct {p0, v12, v12, v11, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->scheduleState(IILandroid/view/MotionEvent;I)Z

    .line 891
    const-string v6, "CLOSED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    .line 894
    const-string v6, "CLOSED"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendWatchActionResult(Ljava/lang/CharSequence;)V

    .line 898
    :cond_d
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMathWritingEnabled:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v6, :cond_e

    .line 899
    const-string/jumbo v6, "service_cb_math_writing_result"

    invoke-virtual {p1, v6, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 900
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_e

    .line 901
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v6, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 902
    sget-boolean v6, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_MATH_WRITING_RESULT : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_e
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v6, :cond_f

    .line 908
    const-string/jumbo v6, "service_cb_help_mode_result"

    invoke-virtual {p1, v6, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 909
    .restart local v1    # "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_f

    .line 910
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v6, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 911
    sget-boolean v6, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v6, :cond_f

    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_HELP_MODE_RESULT : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .end local v1    # "cs":Ljava/lang/CharSequence;
    :cond_f
    const-string/jumbo v6, "service_cb_mms_data_delete"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_10

    .line 916
    const-string v6, "WritingBuddyImpl"

    const-string/jumbo v9, "onResultReceived SERVICE_CB_MMS_DATA_DELETE "

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v6, "MMS_DATA_DELETE"

    invoke-direct {p0, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendMMSDataDelete(Ljava/lang/CharSequence;)V

    .line 921
    :cond_10
    const-string/jumbo v6, "service_cb_drawing_mode_set"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 922
    .local v0, "ImageMode":I
    if-lez v0, :cond_0

    .line 923
    const-string v6, "WritingBuddyImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onResultReceived SERVICE_CB_DRAWING_MODE_SET : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    if-ne v0, v7, :cond_13

    :goto_3
    iput-boolean v7, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    .line 926
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsReceiveActionButtonEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    if-eqz v6, :cond_0

    .line 927
    iget-boolean v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageModePenDrawing:Z

    if-eqz v6, :cond_0

    .line 928
    iget-object v6, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    const-string v7, "DRAWING_MODE"

    invoke-interface {v6, v12, v7, v11}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;->onPrivateCommand(ILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .end local v0    # "ImageMode":I
    .end local v2    # "editorAction":I
    :cond_11
    move v4, v8

    .line 855
    goto/16 :goto_1

    .restart local v4    # "isShown":Z
    :cond_12
    move v3, v8

    .line 861
    goto/16 :goto_2

    .end local v4    # "isShown":Z
    .restart local v0    # "ImageMode":I
    .restart local v2    # "editorAction":I
    :cond_13
    move v7, v8

    .line 924
    goto :goto_3
.end method

.method public onTextDeleted(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 785
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WritingBuddyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTextDeleted() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 788
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getWBTextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 789
    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v3, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTextDeleted() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_1
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 792
    check-cast v0, Landroid/text/Editable;

    .line 793
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 796
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_2
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 798
    .end local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_3
    return-void

    .line 789
    .restart local v1    # "textBuffer":Ljava/lang/CharSequence;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTextInserted(ILjava/lang/CharSequence;I)V
    .locals 6
    .param p1, "where"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "nextCursor"    # I

    .prologue
    const/4 v3, 0x0

    .line 750
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v4, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextInserted() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 754
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 755
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    invoke-interface {v2, p2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;->onTextReceived(Ljava/lang/CharSequence;)V

    .line 781
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    .line 750
    goto :goto_0

    .line 761
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 762
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->getWBTextBuffer(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 763
    .local v1, "textBuffer":Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextInserted() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_5
    instance-of v2, v1, Landroid/text/Editable;

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 766
    check-cast v0, Landroid/text/Editable;

    .line 767
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 768
    invoke-static {v0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 772
    .end local v0    # "editable":Landroid/text/Editable;
    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 773
    iget v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditCount:I

    .line 777
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 778
    const-string v2, "TEXT_INSERTED"

    invoke-direct {p0, v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->sendHelpModeResult(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onUpdateDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 936
    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUpdateDialog code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mState:I

    if-eqz v3, :cond_1

    .line 938
    const/4 v2, 0x0

    .line 939
    .local v2, "wndRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 940
    .local v1, "scrRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    if-ne v3, v6, :cond_4

    .line 941
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 942
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_1
    invoke-direct {p0, v3, v7}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 948
    :goto_2
    sget-boolean v3, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "WritingBuddyImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update onUpdateDialog. wnd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v3, :cond_1

    .line 952
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v3, v4, v2, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    .end local v1    # "scrRect":Landroid/graphics/Rect;
    .end local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_1
    :goto_3
    return-void

    .line 941
    .restart local v1    # "scrRect":Landroid/graphics/Rect;
    .restart local v2    # "wndRect":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 942
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_1

    .line 944
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_4
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectInWindow(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 945
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    :goto_5
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getVisibleRectOnScreen(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    .line 944
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_4

    .line 945
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_5

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WritingBuddyImpl"

    const-string v4, "Can not start WritingBuddy, RemoteException happened"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    .line 498
    return-void
.end method

.method public setBoardTemplate(I)V
    .locals 0
    .param p1, "template"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardTemplate:I

    .line 520
    return-void
.end method

.method public setBoardType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 431
    iput p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mBoardType:I

    .line 432
    return-void
.end method

.method public setEditorType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 508
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the Drawable, String, subDescription and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_0
    iput p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mEditorType:I

    .line 512
    return-void
.end method

.method public setImageWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsImageWritingEnabled:Z

    .line 477
    return-void
.end method

.method public setMathWritingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsMathWritingEnabled:Z

    .line 481
    return-void
.end method

.method public setOnImageWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    .prologue
    .line 570
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setImageWritingEnabled(Z)V

    .line 572
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mImageWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;

    .line 573
    return-void

    .line 570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnPrivateCommandListner(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCommandListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnPrivateCommandListener;

    .line 577
    return-void
.end method

.method public setOnTextUpdateListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextUpdateListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextUpdateListener;

    .line 581
    return-void
.end method

.method public setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mTextWritingListener:Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;

    .line 561
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 411
    if-nez p1, :cond_0

    .line 412
    const-string v0, "WritingBuddyImpl"

    const-string v1, "Reset parent View"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    .line 415
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mAnchorView:Landroid/view/View;

    .line 416
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPopupCue:Lcom/samsung/android/writingbuddy/PopupCue;

    .line 417
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    .line 418
    iput-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public setPrivateCommnad(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 484
    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    .line 486
    const-string v0, "HELP_MODE"

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsHelpModeEnabled:Z

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const-string v0, "WATCH_ACTION"

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsWatchActionEnabled:Z

    goto :goto_0

    .line 490
    :cond_2
    const-string v0, "RECEIVE_ACTION_BUTTON"

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mPrivateCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iput-boolean v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mIsReceiveActionButtonEnabled:Z

    goto :goto_0
.end method

.method public show()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1118
    const/4 v0, 0x0

    return v0
.end method

.method public showPopup()V
    .locals 4

    .prologue
    .line 643
    const-string v2, "WritingBuddyImpl"

    const-string/jumbo v3, "showPopup"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v1, 0x0

    .line 647
    .local v1, "style":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mWBManager:Lcom/samsung/android/writingbuddy/IWritingBuddyManager;

    iget v3, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mViewID:I

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/writingbuddy/IWritingBuddyManager;->showPopup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WritingBuddyImpl"

    const-string v3, "Can not start showPopup, RemoteException happened"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
