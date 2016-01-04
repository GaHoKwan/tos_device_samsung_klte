.class public Landroid/webkitsec/WebViewCore$EventHub;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHub"
.end annotation


# static fields
.field static final ADD_JS_INTERFACE:I = 0x8a

.field static final ADD_PACKAGE_NAME:I = 0xb9

.field static final ADD_PACKAGE_NAMES:I = 0xb8

.field static final ADVANCE_TEXT_SELECTION_ALL:I = 0x2cc

.field static final AUTOFILL_FORM:I = 0xc0

.field static final CAN_REDO:I = 0x20f

.field static final CAN_UNDO:I = 0x20d

.field static final CHECK_END_OF_WORD_AT_POSITION:I = 0x224

.field static final CHECK_SELECTED_CLOSEST_WORD:I = 0x223

.field static final CHECK_SELECTION_AT_BOUNDRY:I = 0x217

.field static final CHECK_SPELLING_OF_WORD:I = 0xf1

.field static final CLEAR_CACHE:I = 0x6f

.field static final CLEAR_CONTENT:I = 0x86

.field static final CLEAR_HISTORY:I = 0x70

.field static final CLEAR_REDO_UNDO:I = 0x211

.field static final CLEAR_SSL_PREF_TABLE:I = 0x96

.field static final CLEAR_TEXT_SELECTION:I = 0x2c7

.field static final CLOSEST_WORD_SELECTION:I = 0x2c8

.field static final CONTENT_INVALIDATE_ALL:I = 0xaf

.field static final CONTENT_SELECTION_TYPE:I = 0x213

.field static final COPY_BEGIN_EXTEND_SELECTION:I = 0x2c9

.field static final COPY_MOVE_SELECTION:I = 0x2c6

.field static final COPY_SAVE_IMAGE:I = 0x204

.field static final COPY_TEXT:I = 0xd2

.field static final DELETE_SELECTION:I = 0x7a

.field static final DELETE_SURROUNDING_TEXT:I = 0x1ff

.field static final DELETE_TEXT:I = 0xd3

.field static final DELKEY_SIML_FOR_COUNT:I = 0x1fc

.field private static final DESTROY:I = 0xc8

.field static final DOC_HAS_IMAGES:I = 0x78

.field static final DRAW_SELECTION:I = 0x205

.field static final DROP_THE_DRAGGED_TEXT:I = 0x22d

.field static final DUMP_DOMTREE:I = 0xaa

.field static final DUMP_RENDERTREE:I = 0xab

.field static final EXECUTE_JS:I = 0xc2

.field static final EXEC_COMMAND:I = 0x203

.field static final FIND_ALL:I = 0xdd

.field static final FIND_NEXT:I = 0xde

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x60

.field static final FREE_MEMORY:I = 0x91

.field static final GEOLOCATION_PERMISSIONS_PROVIDE:I = 0xb4

.field static final GET_BODY_EMPTY:I = 0x212

.field static final GET_BODY_HTML:I = 0x200

.field static final GET_BODY_PLAIN_TEXT:I = 0x202

.field static final GET_CARET_RECT:I = 0x209

.field static final GET_CURRENT_FONTSIZE:I = 0x222

.field static final GET_CURRENT_FONTVALUE:I = 0x225

.field static final GET_EMAIL_MARKUP:I = 0x206

.field static final GET_IMAGE_SIZE:I = 0x226

.field static final GET_INPUT_TEXT_BOUNDS:I = 0x25a

.field static final GET_SELECTEDIMAGE_RECT:I = 0x227

.field static final GET_SELECTED_HTML_TEXT:I = 0x230

.field static final GET_SELECTED_IMAGE_URI:I = 0x229

.field static final GET_SELECTED_TEXT:I = 0x2cf

.field static final GET_SELECTION_NONE:I = 0x20c

.field static final GET_SLECTION_OFFSET:I = 0x201

.field static final GET_SLECTION_OFFSET_IMAGE:I = 0x21d

.field static final GET_STATE_IN_RICHLY_EDITABLE:I = 0x21e

.field static final GET_TEXT_AROUND_CURSOR:I = 0x1fd

.field static final GO_BACK_FORWARD:I = 0x6a

.field static final HEARTBEAT:I = 0xc5

.field static final HIDE_FULLSCREEN:I = 0xb6

.field static final INSERT_IMAGE_CONTENT:I = 0x220

.field static final INSERT_TEXT:I = 0xd4

.field static final INSERT_TEXT_CONTENT:I = 0x218

.field static final IS_AT_BOUNDARY:I = 0x22c

.field static final IS_TOUCHED_OUTSIDE:I = 0x22e

.field static final KEY_DOWN:I = 0x67

.field static final KEY_PRESS:I = 0xdf

.field static final KEY_UP:I = 0x68

.field private static final LAST_PACKAGE_MSG_ID:I = 0x95

.field static final LISTBOX_CHOICES:I = 0x7b

.field static final LOAD_DATA:I = 0x8b

.field static final LOAD_URL:I = 0x64

.field public static final MESSAGE_RELAY:I = 0x7d

.field static final MODIFY_SELECTION:I = 0xbe

.field static final MOVE_FOCUS_NEXT:I = 0x258

.field static final MOVE_FOCUS_PREV:I = 0x259

.field public static final MOVE_SINGLE_CURSOR_HANDLER:I = 0x21c

.field static final NAVIGATION_BT_KEYBOARD:I = 0x2cd

.field static final NOTIFICATION_ID_BACK:I = 0xcd

.field static final NOTIFICATION_PERMISSIONS_PROVIDE:I = 0xcb

.field static final NOTIFICATION_RESPONSE_BACK:I = 0xcc

.field static final NOTIFY_ANIMATION_STARTED:I = 0xc4

.field static final ON_PAUSE:I = 0x8f

.field static final ON_RESUME:I = 0x90

.field static final PASS_TO_JS:I = 0x73

.field static final PAUSE_TIMERS:I = 0x6d

.field static final PLUGIN_SURFACE_READY:I = 0xc3

.field static final POPULATE_VISITED_LINKS:I = 0xb5

.field static final POST_URL:I = 0x84

.field static final PROXY_CHANGED:I = 0xc1

.field static final RELOAD:I = 0x66

.field static final REMOVE_JS_INTERFACE:I = 0x95

.field static final REMOVE_PACKAGE_NAME:I = 0xba

.field static final REPLACE_TEXT:I = 0x72

.field static final REQUEST_CURSOR_HREF:I = 0x89

.field static final REQUEST_DOC_AS_TEXT:I = 0xa1

.field static final REQUEST_EXT_REPRESENTATION:I = 0xa0

.field static final RESET_SELECTION:I = 0x22f

.field static final RESIZE_IMAGE:I = 0x221

.field static final RESTORE_SELECTION:I = 0x214

.field static final RESTORE_STATE:I = 0x6c

.field static final RESUME_TIMERS:I = 0x6e

.field static final REVEAL_SELECTION:I = 0x60

.field static final SAVE_DOCUMENT_STATE:I = 0x80

.field static final SAVE_SELECTION:I = 0x215

.field static final SAVE_VIEW_STATE:I = 0xe1

.field static final SAVE_WEBARCHIVE:I = 0x93

.field static final SCROLL_LAYER:I = 0xc6

.field static final SCROLL_TEXT_INPUT:I = 0x63

.field static final SELECT_ALL:I = 0xd7

.field static final SELECT_BETWEEN_START_AND_END:I = 0x22a

.field static final SELECT_TEXT:I = 0xd5

.field static final SELECT_WORD_AT:I = 0xd6

.field static final SET_ACTIVE:I = 0x8e

.field static final SET_BACKGROUND_COLOR:I = 0x7e

.field static final SET_COLOR_CHOICE:I = 0xc9

.field static final SET_COMPOSING_SELECTION:I = 0x21b

.field static final SET_COMPOSING_SELECTION_NONE:I = 0x219

.field static final SET_CURSOR_FROM_RANGE_SELECTION:I = 0x22b

.field static final SET_EDITABLE:I = 0x207

.field static final SET_GLOBAL_BOUNDS:I = 0x74

.field static final SET_INITIAL_FOCUS:I = 0xe0

.field static final SET_JS_FLAGS:I = 0xae

.field static final SET_LOADED_FLAG:I = 0xda

.field static final SET_MOVE_MOUSE:I = 0x87

.field static final SET_NETWORK_STATE:I = 0x77

.field static final SET_NETWORK_TYPE:I = 0xb7

.field static final SET_PAGE_ZOOM:I = 0x228

.field static final SET_READABILITY_FLAG:I = 0xd9

.field static final SET_SCROLL_OFFSET:I = 0x6b

.field static final SET_SELECTION:I = 0x71

.field static final SET_SELECTION_FOR_EDITING:I = 0x1fe

.field static final SET_SELECTION_NONE:I = 0x20b

.field static final SET_USE_MOCK_DEVICE_ORIENTATION:I = 0xbf

.field static final SET_USE_MOCK_GEOLOCATION:I = 0xe2

.field static final SHOW_ACTION_BAR:I = 0x21f

.field static final SINGLE_LISTBOX_CHOICE:I = 0x7c

.field static final STOP_LOADING:I = 0x65

.field static final TRUST_STORAGE_UPDATED:I = 0xdc

.field static final UNMARK_WORD:I = 0xf0

.field static final UPDATE_EDITTEXT_SELECTION_IN_SCROLL:I = 0x2ce

.field static final UPDATE_IM_SELECTION:I = 0x21a

.field static final UPDATE_TEXT_START_AND_END:I = 0x25d

.field static final VIEW_SIZE_CHANGED:I = 0x69

.field static final WEBKIT_DRAW:I = 0x82


# instance fields
.field private mBlockMessages:Z

.field private mDestroying:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPriority:I

.field private mTid:I

.field final synthetic this$0:Landroid/webkitsec/WebViewCore;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewCore;)V
    .locals 1

    .prologue
    .line 1827
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1815
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    .line 1827
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewCore$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p2, "x1"    # Landroid/webkitsec/WebViewCore$1;

    .prologue
    .line 1578
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore$EventHub;-><init>(Landroid/webkitsec/WebViewCore;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkitsec/WebViewCore$EventHub;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;

    .prologue
    .line 1578
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkitsec/WebViewCore$EventHub;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;

    .prologue
    .line 1578
    iget v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mSavedPriority:I

    return v0
.end method

.method static synthetic access$1102(Landroid/webkitsec/WebViewCore$EventHub;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;
    .param p1, "x1"    # I

    .prologue
    .line 1578
    iput p1, p0, Landroid/webkitsec/WebViewCore$EventHub;->mSavedPriority:I

    return p1
.end method

.method static synthetic access$1200(Landroid/webkitsec/WebViewCore$EventHub;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;

    .prologue
    .line 1578
    iget v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mTid:I

    return v0
.end method

.method static synthetic access$14600(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 1578
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$14700(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;J)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # J

    .prologue
    .line 1578
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$14800(Landroid/webkitsec/WebViewCore$EventHub;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;
    .param p1, "x1"    # I

    .prologue
    .line 1578
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore$EventHub;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$14900(Landroid/webkitsec/WebViewCore$EventHub;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;

    .prologue
    .line 1578
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore$EventHub;->removeMessages()V

    return-void
.end method

.method static synthetic access$15000(Landroid/webkitsec/WebViewCore$EventHub;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;

    .prologue
    .line 1578
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore$EventHub;->blockMessages()V

    return-void
.end method

.method static synthetic access$200(Landroid/webkitsec/WebViewCore$EventHub;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;

    .prologue
    .line 1578
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore$EventHub;->transferMessages()V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 1578
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/WebViewCore$EventHub;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;

    .prologue
    .line 1578
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z

    return v0
.end method

.method static synthetic access$302(Landroid/webkitsec/WebViewCore$EventHub;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;
    .param p1, "x1"    # Z

    .prologue
    .line 1578
    iput-boolean p1, p0, Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z

    return p1
.end method

.method static synthetic access$900(Landroid/webkitsec/WebViewCore$EventHub;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore$EventHub;

    .prologue
    .line 1578
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized blockMessages()V
    .locals 1

    .prologue
    .line 3187
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3188
    monitor-exit p0

    return-void

    .line 3187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages()V
    .locals 2

    .prologue
    .line 3175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v1, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore;->access$14302(Landroid/webkitsec/WebViewCore;Z)Z

    .line 3176
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 3177
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3181
    :goto_0
    monitor-exit p0

    return-void

    .line 3179
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 3130
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3147
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3133
    :cond_1
    const/16 v2, 0x82

    if-ne p1, v2, :cond_2

    .line 3134
    :try_start_1
    iget-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v3, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v2, v3}, Landroid/webkitsec/WebViewCore;->access$14302(Landroid/webkitsec/WebViewCore;Z)Z

    .line 3136
    :cond_2
    iget-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    if-eqz v2, :cond_4

    .line 3137
    iget-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3138
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 3140
    .local v1, "m":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_3

    .line 3141
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3130
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3145
    :cond_4
    :try_start_2
    iget-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3119
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3127
    :goto_0
    monitor-exit p0

    return-void

    .line 3122
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 3123
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3125
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3160
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3168
    :goto_0
    monitor-exit p0

    return-void

    .line 3163
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 3164
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3166
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delay"    # J

    .prologue
    .line 3150
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 3154
    :goto_0
    monitor-exit p0

    return-void

    .line 3153
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferMessages()V
    .locals 4

    .prologue
    .line 1836
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    iput v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mTid:I

    .line 1837
    iget v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mTid:I

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    iput v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mSavedPriority:I

    .line 1839
    new-instance v2, Landroid/webkitsec/WebViewCore$EventHub$1;

    invoke-direct {v2, p0}, Landroid/webkitsec/WebViewCore$EventHub$1;-><init>(Landroid/webkitsec/WebViewCore$EventHub;)V

    iput-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    .line 3024
    monitor-enter p0

    .line 3025
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 3026
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3027
    iget-object v3, p0, Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3026
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3029
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;

    .line 3030
    monitor-exit p0

    .line 3031
    return-void

    .line 3030
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public blockWebkitDraw(Z)V
    .locals 5
    .param p1, "block"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3193
    const-string v0, "WebViewInputDispatcher"

    const-string v1, "blockWebkitDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->access$14400(Landroid/webkitsec/WebViewCore;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3195
    :try_start_0
    const-string v0, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockWebkitDraw locked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewCore;->access$14500(Landroid/webkitsec/WebViewCore;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    if-eqz p1, :cond_1

    .line 3198
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore;->mBlockWebkitDraw:Z

    if-nez v0, :cond_0

    .line 3200
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/webkitsec/WebViewCore;->mBlockWebkitDraw:Z

    .line 3201
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->pauseWebKitDraw()V

    .line 3212
    :cond_0
    :goto_0
    monitor-exit v1

    .line 3213
    return-void

    .line 3206
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore;->mBlockWebkitDraw:Z

    if-ne v0, v4, :cond_0

    .line 3208
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/webkitsec/WebViewCore;->mBlockWebkitDraw:Z

    .line 3209
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->resumeWebKitDraw()V

    goto :goto_0

    .line 3212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchWebKitEvent(Landroid/webkitsec/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z
    .locals 15
    .param p1, "dispatcher"    # Landroid/webkitsec/WebViewInputDispatcher;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "eventType"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3041
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v1}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3042
    const/4 v1, 0x0

    .line 3111
    :goto_0
    return v1

    .line 3044
    :cond_0
    sparse-switch p3, :sswitch_data_0

    .line 3111
    const/4 v1, 0x0

    goto :goto_0

    .line 3046
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 3047
    .local v13, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 3048
    .local v14, "y":I
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    iget-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getScaledNavSlop()I

    move-result v2

    const/4 v3, 0x1

    # invokes: Landroid/webkitsec/WebViewCore;->performHitTest(IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;
    invoke-static {v1, v13, v14, v2, v3}, Landroid/webkitsec/WebViewCore;->access$9600(Landroid/webkitsec/WebViewCore;IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;

    move-result-object v10

    .line 3050
    .local v10, "hit":Landroid/webkitsec/WebViewCore$WebKitHitTest;
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v1}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3052
    const/4 v1, 0x0

    goto :goto_0

    .line 3055
    .end local v10    # "hit":Landroid/webkitsec/WebViewCore$WebKitHitTest;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :sswitch_1
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v1}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->blockWebkitViewMessages()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3056
    const/4 v1, 0x0

    goto :goto_0

    .line 3058
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    iget-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v2

    # invokes: Landroid/webkitsec/WebViewCore;->nativeMouseClick(I)Z
    invoke-static {v1, v2}, Landroid/webkitsec/WebViewCore;->access$14100(Landroid/webkitsec/WebViewCore;I)Z

    move-result v1

    goto :goto_0

    .line 3061
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 3062
    .local v7, "count":I
    new-array v4, v7, [I

    .line 3063
    .local v4, "idArray":[I
    new-array v5, v7, [I

    .line 3064
    .local v5, "xArray":[I
    new-array v6, v7, [I

    .line 3065
    .local v6, "yArray":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v7, :cond_2

    .line 3066
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    aput v1, v4, v11

    .line 3067
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v5, v11

    .line 3068
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v6, v11

    .line 3065
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3070
    :cond_2
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    iget-object v2, p0, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    # invokes: Landroid/webkitsec/WebViewCore;->nativeHandleTouchEvent(II[I[I[IIII)I
    invoke-static/range {v1 .. v9}, Landroid/webkitsec/WebViewCore;->access$14200(Landroid/webkitsec/WebViewCore;II[I[I[IIII)I

    move-result v12

    .line 3074
    .local v12, "touchFlags":I
    if-nez v12, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_3

    .line 3077
    invoke-virtual/range {p1 .. p1}, Landroid/webkitsec/WebViewInputDispatcher;->skipWebkitForRemainingTouchStream()V

    .line 3079
    :cond_3
    and-int/lit8 v1, v12, 0x2

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3044
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public getWebKitLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 3035
    iget-object v0, p0, Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
