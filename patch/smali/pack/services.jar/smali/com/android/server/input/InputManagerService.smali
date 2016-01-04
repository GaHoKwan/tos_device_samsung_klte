.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$ControlWakeKey;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field static final DEBUG:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field public static final FLAG_MONITOR_KEY_FILTER:I = 0x1

.field public static final FLAG_MONITOR_MOTION_FILTER:I = 0x2

.field public static final FLAG_MONITOR_NO_FILTER:I = 0x0

.field public static final FLAG_MONITOR_SOURCE_CLASS_POINTER_FILTER:I = 0x4

.field public static final FLAG_MONITOR_TOOL_TYPE_FINGER_FILTER:I = 0x10

.field public static final FLAG_MONITOR_TOOL_TYPE_STYLUS_FILTER:I = 0x8

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field public static final SW_BOTH_HAND:I = 0x19

.field public static final SW_BOTH_HAND_BIT:I = 0x2000000

.field public static final SW_FLIP:I = 0x15

.field public static final SW_FLIP_BIT:I = 0x200000

.field public static final SW_GLOVE:I = 0x16

.field public static final SW_GLOVE_BIT:I = 0x400000

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0x94

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LEFT_HAND:I = 0x17

.field public static final SW_LEFT_HAND_BIT:I = 0x800000

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_OCR_CRADLE:I = 0x11

.field public static final SW_OCR_CRADLE_BIT:I = 0x20000

.field public static final SW_PEN_INSERT:I = 0x13

.field public static final SW_PEN_INSERT_BIT:I = 0x80000

.field public static final SW_RIGHT_HAND:I = 0x18

.field public static final SW_RIGHT_HAND_BIT:I = 0x1000000

.field public static final SW_W1:I = 0x1a

.field public static final SW_W1_BIT:I = 0x4000000

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mIsBackBlockKeys:Z

.field private mIsBlockKeys:Z

.field private mIsKidsMode:Z

.field private mIsShowHoverPointer:Z

.field private mKeyboardLayoutIntent:Landroid/app/PendingIntent;

.field private mKeyboardLayoutNotificationShown:Z

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPtr:I

.field private mRemoteControlConnected:Z

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 132
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 137
    new-array v0, v1, [Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 214
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsBlockKeys:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsBackBlockKeys:Z

    .line 2513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    .line 341
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 342
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 346
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)I

    move-result v0

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    .line 349
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # [Landroid/view/InputDevice;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/input/InputManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/input/InputManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    return v0
.end method

.method static synthetic access$700(ILandroid/view/InputEvent;IIIII)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/view/InputEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 107
    invoke-static/range {p0 .. p6}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/input/InputManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1724
    monitor-enter p1

    .line 1725
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_0

    .line 1726
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget v1, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(III)V

    .line 1727
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1729
    :cond_0
    monitor-exit p1

    .line 1730
    return-void

    .line 1729
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1751
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return v1

    .line 1755
    :cond_1
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1762
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkInjectEventsPermission(II)Z
    .locals 2
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .locals 4
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 1009
    array-length v2, p0

    .line 1010
    .local v2, "numDevices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1011
    aget-object v1, p0, v0

    .line 1012
    .local v1, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1013
    const/4 v3, 0x1

    .line 1016
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 1010
    .restart local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1016
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 13
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 876
    const/4 v7, 0x0

    .line 877
    .local v7, "numFullKeyboardsAdded":I
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 878
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 881
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 882
    :try_start_0
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v10, :cond_0

    .line 883
    monitor-exit v11

    .line 943
    :goto_0
    return-void

    .line 885
    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 887
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 888
    .local v9, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_1

    .line 889
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 893
    :cond_1
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v5, v10

    .line 894
    .local v5, "numDevices":I
    mul-int/lit8 v10, v5, 0x2

    new-array v0, v10, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    .local v0, "deviceIdAndGeneration":[I
    const/4 v1, 0x0

    move v8, v7

    .end local v7    # "numFullKeyboardsAdded":I
    .local v8, "numFullKeyboardsAdded":I
    :goto_2
    if-ge v1, v5, :cond_4

    .line 896
    :try_start_1
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v10, v1

    .line 897
    .local v2, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v10, v1, 0x2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v12

    aput v12, v0, v10

    .line 898
    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2}, Landroid/view/InputDevice;->getGeneration()I

    move-result v12

    aput v12, v0, v10

    .line 900
    invoke-virtual {v2}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v2}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 901
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 903
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :try_start_2
    invoke-virtual {v10, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 895
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v8, v7

    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    goto :goto_2

    .line 905
    :cond_2
    :try_start_3
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v7, v8

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_3

    .line 909
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :cond_4
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 912
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_5

    .line 913
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v10, v0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 909
    .end local v0    # "deviceIdAndGeneration":[I
    .end local v1    # "i":I
    .end local v5    # "numDevices":I
    .end local v8    # "numFullKeyboardsAdded":I
    .end local v9    # "numListeners":I
    .restart local v7    # "numFullKeyboardsAdded":I
    :catchall_0
    move-exception v10

    :goto_5
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 916
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v0    # "deviceIdAndGeneration":[I
    .restart local v1    # "i":I
    .restart local v5    # "numDevices":I
    .restart local v8    # "numFullKeyboardsAdded":I
    .restart local v9    # "numListeners":I
    :cond_5
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 919
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v10, :cond_8

    .line 920
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 921
    .local v6, "numFullKeyboards":I
    const/4 v3, 0x0

    .line 922
    .local v3, "missingLayoutForExternalKeyboard":Z
    const/4 v4, 0x0

    .line 923
    .local v4, "missingLayoutForExternalKeyboardAdded":Z
    iget-object v11, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v11

    .line 924
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v6, :cond_7

    .line 925
    :try_start_5
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    .line 926
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    .line 927
    const/4 v3, 0x1

    .line 928
    if-ge v1, v8, :cond_6

    .line 929
    const/4 v4, 0x1

    .line 924
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 933
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_7
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 934
    if-eqz v3, :cond_9

    .line 935
    if-eqz v4, :cond_8

    .line 936
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification()V

    .line 942
    .end local v3    # "missingLayoutForExternalKeyboard":Z
    .end local v4    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v6    # "numFullKeyboards":I
    :cond_8
    :goto_7
    iget-object v10, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v7, v8

    .line 943
    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto/16 :goto_0

    .line 933
    .end local v7    # "numFullKeyboardsAdded":I
    .restart local v3    # "missingLayoutForExternalKeyboard":Z
    .restart local v4    # "missingLayoutForExternalKeyboardAdded":Z
    .restart local v6    # "numFullKeyboards":I
    .restart local v8    # "numFullKeyboardsAdded":I
    :catchall_1
    move-exception v10

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v10

    .line 938
    :cond_9
    iget-boolean v10, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v10, :cond_8

    .line 939
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    goto :goto_7

    .line 909
    .end local v3    # "missingLayoutForExternalKeyboard":Z
    .end local v4    # "missingLayoutForExternalKeyboardAdded":Z
    .end local v6    # "numFullKeyboards":I
    :catchall_2
    move-exception v10

    move v7, v8

    .end local v8    # "numFullKeyboardsAdded":I
    .restart local v7    # "numFullKeyboardsAdded":I
    goto :goto_5
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 1
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private getBackBlockKeysFromSetting(Z)Z
    .locals 8
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1662
    move v1, p1

    .line 1664
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "parental_control_block_back_key"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1669
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 1664
    goto :goto_0

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getBackBlockKeysSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getBlockKeysSetting(Z)Z
    .locals 8
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1622
    move v1, p1

    .line 1624
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "parental_control_block_key"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1630
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 1624
    goto :goto_0

    .line 1627
    :catch_0
    move-exception v0

    .line 1628
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getBlockKeysSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2111
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    :cond_0
    return-object v1
.end method

.method private getDiffKeyboardLayoutOverlay(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2057
    iget-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-nez v3, :cond_1

    move-object v1, v2

    .line 2105
    :cond_0
    :goto_0
    return-object v1

    .line 2061
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2063
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v1, v2

    .line 2064
    goto :goto_0

    .line 2067
    :cond_2
    const-string v3, "InputManager"

    const-string v4, "loading keyboard layout for BKB-10"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const-string v3, ".*arabic_101"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*bulgarian"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*english_uk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*french_ca"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*greek"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*hebrew"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*italian"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*norwegian"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*spanish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*swiss_french"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*swiss_german"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".*turkish"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2080
    :cond_3
    const-string v3, "_bkb10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2083
    :cond_4
    const-string v3, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "overlay KLD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 2087
    .local v1, "result":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/input/InputManagerService$18;

    invoke-direct {v3, p0, v1}, Lcom/android/server/input/InputManagerService$18;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2100
    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-nez v3, :cond_0

    .line 2101
    const-string v3, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 2103
    goto/16 :goto_0
.end method

.method private getDoubleTapTimeout()I
    .locals 1

    .prologue
    .line 1966
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private getExcludedDeviceNames()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 1910
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1913
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1915
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/excluded-input-devices.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1916
    .local v0, "confFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 1918
    .local v1, "confreader":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    .end local v1    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 1920
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1921
    const-string v7, "devices"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1924
    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1925
    const-string v7, "device"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-nez v7, :cond_3

    .line 1938
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v1, v2

    .line 1941
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 1928
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :cond_3
    const/4 v7, 0x0

    :try_start_3
    const-string v8, "name"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1929
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1930
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1933
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v2

    .line 1938
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_2
    move-exception v7

    move-object v1, v2

    .line 1939
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_1

    .line 1935
    :catch_3
    move-exception v3

    .line 1936
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v7, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1938
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v7

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v7

    :catch_5
    move-exception v8

    goto :goto_5

    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_4

    .line 1935
    .end local v1    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v1    # "confreader":Ljava/io/FileReader;
    goto :goto_3

    .line 1933
    :catch_7
    move-exception v7

    goto :goto_2
.end method

.method private getGloveModeSetting(Z)Z
    .locals 8
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1521
    move v1, p1

    .line 1523
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_adjust_touch"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1529
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 1523
    goto :goto_0

    .line 1525
    :catch_0
    move-exception v0

    .line 1526
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getGloveModeSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getHoverTapSlop()I
    .locals 1

    .prologue
    .line 1961
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .locals 1

    .prologue
    .line 1956
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatDelay()I
    .locals 1

    .prologue
    .line 1951
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .locals 1

    .prologue
    .line 1946
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1986
    iget-boolean v7, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-nez v7, :cond_1

    move-object v5, v6

    .line 2051
    :cond_0
    :goto_0
    return-object v5

    .line 1990
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1992
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v4, :cond_2

    move-object v5, v6

    .line 1993
    goto :goto_0

    .line 1997
    :cond_2
    const/4 v3, 0x0

    .line 1998
    .local v3, "isOldType":Z
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1999
    :try_start_0
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v8

    .line 2000
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2001
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v8, v1

    .line 2002
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2003
    invoke-virtual {v2}, Landroid/view/InputDevice;->getVendorId()I

    move-result v8

    const/16 v9, 0x4e8

    if-ne v8, v9, :cond_3

    invoke-virtual {v2}, Landroid/view/InputDevice;->getProductId()I

    move-result v8

    const/16 v9, 0x7021

    if-ne v8, v9, :cond_3

    .line 2004
    const/4 v3, 0x1

    .line 2009
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    if-eqz v3, :cond_5

    .line 2012
    const-string v7, "InputManager"

    const-string v8, "loading keyboard layout for BKB-10"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const-string v7, ".*arabic_101"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*bulgarian"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*english_uk"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*french_ca"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*greek"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*hebrew"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*italian"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*norwegian"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*spanish"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*swiss_french"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*swiss_german"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".*turkish"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2025
    :cond_4
    const-string v7, "_bkb10"

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2029
    :cond_5
    const-string v7, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "overlay KLD: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    .line 2033
    .local v5, "result":[Ljava/lang/String;
    new-instance v7, Lcom/android/server/input/InputManagerService$17;

    invoke-direct {v7, p0, v5}, Lcom/android/server/input/InputManagerService$17;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v4, v7}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2046
    const/4 v7, 0x0

    aget-object v7, v5, v7

    if-nez v7, :cond_0

    .line 2047
    const-string v7, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 2049
    goto/16 :goto_0

    .line 2000
    .end local v5    # "result":[Ljava/lang/String;
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2009
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private getKidsModeSetting(Z)Z
    .locals 8
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1634
    move v1, p1

    .line 1636
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kids_home_mode"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1642
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 1636
    goto :goto_0

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getKidsModeSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getLongPressTimeout()I
    .locals 1

    .prologue
    .line 1971
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPenHoveringSetting(Z)Z
    .locals 8
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1648
    move v1, p1

    .line 1650
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1656
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 1650
    goto :goto_0

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getPenHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPointerIcon()Landroid/view/PointerIcon;
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .locals 4

    .prologue
    .line 1369
    const/4 v0, 0x0

    .line 1371
    .local v0, "speed":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_speed"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1375
    :goto_0
    return v0

    .line 1373
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getShowFingerHoveringSetting(Z)Z
    .locals 8
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1595
    move v1, p1

    .line 1597
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_pointer"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1604
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 1597
    goto :goto_0

    .line 1601
    :catch_0
    move-exception v0

    .line 1602
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getShowFingerHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getShowHoveringSetting(Z)Z
    .locals 8
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1610
    move v1, p1

    .line 1612
    .local v1, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_pointer"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1617
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 1612
    goto :goto_0

    .line 1614
    :catch_0
    move-exception v0

    .line 1615
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getShowHoveringSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getShowTouchesSetting(I)I
    .locals 4
    .param p1, "defaultValue"    # I

    .prologue
    .line 1584
    move v0, p1

    .line 1586
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1590
    :goto_0
    return v0

    .line 1588
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .locals 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private handleSwitchKeyboardLayout(II)V
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1259
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 1260
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_2

    .line 1261
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 1264
    .local v2, "inputDeviceDescriptor":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v6

    .line 1266
    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v0

    .line 1267
    .local v0, "changed":Z
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v2}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1270
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1272
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1274
    if-eqz v0, :cond_2

    .line 1275
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v5, :cond_0

    .line 1276
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 1277
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1279
    :cond_0
    if-eqz v4, :cond_1

    .line 1280
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    .line 1281
    .local v3, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v3, :cond_1

    .line 1282
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1284
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1288
    .end local v3    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1291
    .end local v0    # "changed":Z
    .end local v2    # "inputDeviceDescriptor":Ljava/lang/String;
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_2
    return-void

    .line 1270
    .restart local v2    # "inputDeviceDescriptor":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v7}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v5

    .line 1272
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .locals 4

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_0

    .line 977
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 978
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0x1040776

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 982
    :cond_0
    return-void
.end method

.method private interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 1
    .param p1, "policyFlags"    # I

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method private static native nativeCancelVibrate(III)V
.end method

.method private static native nativeDump(I)Ljava/lang/String;
.end method

.method private static native nativeFadePointer(I)V
.end method

.method private static native nativeGetCursorPosition(I)[F
.end method

.method private static native nativeGetDoNotUseVelocity(I)Z
.end method

.method private static native nativeGetKeyCodeState(IIII)I
.end method

.method private static native nativeGetScanCodeState(IIII)I
.end method

.method private static native nativeGetSwitchState(IIII)I
.end method

.method private static native nativeGetWakeFlag(III)Z
.end method

.method private static native nativeHasKeys(III[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)I
.end method

.method private static native nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I
.end method

.method private static native nativeMonitor(I)V
.end method

.method private static native nativeRegisterInputChannel(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V
.end method

.method private static native nativeRegisterInputChannelEx(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;ZZ)V
.end method

.method private static native nativeReloadDeviceAliases(I)V
.end method

.method private static native nativeReloadKeyboardLayouts(I)V
.end method

.method private static native nativeReloadPointerIcon(III)V
.end method

.method private static native nativeSetBackBlockKeys(IZ)V
.end method

.method private static native nativeSetBlockKeys(IZ)V
.end method

.method private static native nativeSetDisplayViewport(IZIIIIIIIIIIII)V
.end method

.method private static native nativeSetDoNotUseVelocity(IZ)I
.end method

.method private static native nativeSetFlipCoverTouchEnabled(IZ)V
.end method

.method private static native nativeSetFocusedApplication(ILcom/android/server/input/InputApplicationHandle;)V
.end method

.method private static native nativeSetGloveMode(IZ)V
.end method

.method private static native nativeSetInputDispatchMode(IZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(IZ)V
.end method

.method private static native nativeSetInputWindows(I[Lcom/android/server/input/InputWindowHandle;)V
.end method

.method private static native nativeSetKidsMode(IZ)V
.end method

.method private static native nativeSetLedState(IZ)I
.end method

.method private static native nativeSetMonitorChannelFilter(ILandroid/view/InputChannel;I)V
.end method

.method private static native nativeSetPenHovering(IZ)V
.end method

.method private static native nativeSetPointerBounds(IFFFF)V
.end method

.method private static native nativeSetPointerSpeed(II)V
.end method

.method private static native nativeSetShowFingerHovering(IZ)V
.end method

.method private static native nativeSetShowHovering(IZ)V
.end method

.method private static native nativeSetShowTouches(IZ)V
.end method

.method private static native nativeSetStartedShutdown(IZ)V
.end method

.method private static native nativeSetSystemUiVisibility(II)V
.end method

.method private static native nativeStart(I)V
.end method

.method private static native nativeTransferTouchFocus(ILandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(ILandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(II[JII)V
.end method

.method private notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 2
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .locals 1
    .param p1, "whenNanos"    # J

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 1776
    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 1
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    .line 1848
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 4
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .prologue
    .line 1780
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1781
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v0, :cond_0

    .line 1782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1783
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1787
    :cond_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 1788
    monitor-exit v1

    .line 1789
    return-void

    .line 1788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifySwitch(JII)V
    .locals 8
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    .line 1794
    const-string v5, "InputManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifySwitch: values="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mask="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_0

    .line 1799
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_9

    const/4 v2, 0x1

    .line 1800
    .local v2, "lidOpen":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 1804
    .end local v2    # "lidOpen":Z
    :cond_0
    const/high16 v5, 0x80000

    and-int/2addr v5, p4

    if-eqz v5, :cond_1

    .line 1805
    const/high16 v5, 0x80000

    and-int/2addr v5, p3

    if-nez v5, :cond_a

    const/4 v3, 0x1

    .line 1806
    .local v3, "penInsert":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyPenSwitchChanged(JZ)V

    .line 1809
    .end local v3    # "penInsert":Z
    :cond_1
    const/high16 v5, 0x200000

    and-int/2addr v5, p4

    if-eqz v5, :cond_2

    .line 1810
    const/high16 v5, 0x200000

    and-int/2addr v5, p3

    if-eqz v5, :cond_b

    const/4 v0, 0x1

    .line 1811
    .local v0, "coverOpen":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCoverSwitchChanged(JZ)V

    .line 1814
    .end local v0    # "coverOpen":Z
    :cond_2
    const/high16 v5, 0x400000

    and-int/2addr v5, p4

    if-eqz v5, :cond_3

    .line 1815
    const/high16 v5, 0x400000

    and-int/2addr v5, p3

    if-eqz v5, :cond_c

    const/4 v1, 0x1

    .line 1816
    .local v1, "gloveEnable":Z
    :goto_3
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyGloveSwitchChanged(JZ)V

    .line 1819
    .end local v1    # "gloveEnable":Z
    :cond_3
    and-int/lit8 v5, p4, 0x1a

    if-eqz v5, :cond_4

    .line 1820
    and-int/lit8 v5, p3, 0x1a

    if-eqz v5, :cond_d

    const/4 v4, 0x1

    .line 1821
    .local v4, "wirelessChargingEnable":Z
    :goto_4
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v5, p1, p2, v4}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyWirelessChargingChanged(JZ)V

    .line 1826
    .end local v4    # "wirelessChargingEnable":Z
    :cond_4
    const/high16 v5, 0x800000

    and-int/2addr v5, p4

    if-eqz v5, :cond_5

    const/high16 v5, 0x800000

    and-int/2addr v5, p3

    if-eqz v5, :cond_5

    .line 1827
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    const/4 v6, 0x1

    invoke-interface {v5, p1, p2, v6}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyHandSwitchChanged(JI)V

    .line 1830
    :cond_5
    const/high16 v5, 0x1000000

    and-int/2addr v5, p4

    if-eqz v5, :cond_6

    const/high16 v5, 0x1000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_6

    .line 1831
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    const/4 v6, 0x2

    invoke-interface {v5, p1, p2, v6}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyHandSwitchChanged(JI)V

    .line 1834
    :cond_6
    const/high16 v5, 0x2000000

    and-int/2addr v5, p4

    if-eqz v5, :cond_7

    const/high16 v5, 0x2000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_7

    .line 1835
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    const/4 v6, 0x3

    invoke-interface {v5, p1, p2, v6}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyHandSwitchChanged(JI)V

    .line 1839
    :cond_7
    iget-boolean v5, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v5, :cond_8

    and-int/lit16 v5, p4, 0x94

    if-eqz v5, :cond_8

    .line 1840
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v5, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 1843
    :cond_8
    return-void

    .line 1799
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1805
    :cond_a
    const/4 v3, 0x0

    goto :goto_1

    .line 1810
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 1815
    :cond_c
    const/4 v1, 0x0

    goto :goto_3

    .line 1820
    :cond_d
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 868
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 870
    monitor-exit v1

    .line 871
    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerBackBlockKeysSettingObserver()V
    .locals 5

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "parental_control_block_back_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$16;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$16;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1580
    return-void
.end method

.method private registerBlockKeysSettingObserver()V
    .locals 5

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "parental_control_block_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$13;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1543
    return-void
.end method

.method private registerGloveModeSettingObserver()V
    .locals 5

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_adjust_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$12;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1518
    return-void
.end method

.method private registerKidsModeSettingObserver()V
    .locals 5

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$14;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$14;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1554
    return-void
.end method

.method private registerPenHoveringSettingObserver()V
    .locals 5

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$15;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$15;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1567
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .locals 5

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$7;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1366
    return-void
.end method

.method private registerShowFingerHoveringPointerSettingObserver()V
    .locals 5

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_pointer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$10;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1491
    return-void
.end method

.method private registerShowFingerHoveringSettingObserver()V
    .locals 5

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$9;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1480
    return-void
.end method

.method private registerShowHoveringPointerSettingObserver()V
    .locals 5

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_pointer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$11;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1504
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .locals 5

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_touches"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/input/InputManagerService$8;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1468
    return-void
.end method

.method private reloadDeviceAliases()V
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(I)V

    .line 494
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(I)V

    .line 487
    return-void
.end method

.method private setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V
    .locals 15
    .param p1, "external"    # Z
    .param p2, "viewport"    # Lcom/android/server/display/DisplayViewport;

    .prologue
    .line 511
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/display/DisplayViewport;->displayId:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/display/DisplayViewport;->orientation:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/display/DisplayViewport;->deviceWidth:I

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/display/DisplayViewport;->deviceHeight:I

    move/from16 v2, p1

    invoke-static/range {v1 .. v14}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewport(IZIIIIIIIIIIII)V

    .line 518
    return-void
.end method

.method private setPointerSpeedUnchecked(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 1352
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1354
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(II)V

    .line 1355
    return-void
.end method

.method private showMissingKeyboardLayoutNotification()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const v8, 0x1040776

    const/4 v1, 0x0

    .line 947
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 949
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v0, 0x14200000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 953
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutIntent:Landroid/app/PendingIntent;

    .line 957
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 958
    .local v7, "r":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1040777

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080563

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 967
    .local v6, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v8, v6, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 972
    .end local v6    # "notification":Landroid/app/Notification;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method private updateKeyboardLayouts()V
    .locals 4

    .prologue
    .line 987
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 988
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 995
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1001
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1004
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1005
    return-void

    .line 999
    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1001
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 6
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1054
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1055
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v1, "intent":Landroid/content/Intent;
    const/16 v4, 0x80

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1058
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    goto :goto_0

    .line 1060
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 6
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1064
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v0

    .line 1065
    .local v0, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v0, :cond_0

    .line 1066
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1068
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 1071
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1072
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .locals 18
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .prologue
    .line 1079
    move-object/from16 v0, p2

    iget-object v12, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 1080
    .local v12, "metaData":Landroid/os/Bundle;
    if-nez v12, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 1084
    :cond_0
    const-string v2, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1085
    .local v9, "configResId":I
    if-nez v9, :cond_1

    .line 1086
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1091
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 1092
    .local v15, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1095
    .local v6, "collection":Ljava/lang/String;
    :goto_1
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1096
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1098
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string v2, "keyboard-layouts"

    invoke-static {v14, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1101
    :goto_2
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1102
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 1103
    .local v10, "element":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 1140
    :try_start_2
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1142
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v10    # "element":Ljava/lang/String;
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v11

    .line 1143
    .local v11, "ex":Ljava/lang/Exception;
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not parse keyboard layout resource from receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1092
    .end local v6    # "collection":Ljava/lang/String;
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v6, ""

    goto :goto_1

    .line 1106
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v6    # "collection":Ljava/lang/String;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_3
    :try_start_3
    const-string v2, "keyboard-layout"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1107
    sget-object v2, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v3, v14, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 1110
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1112
    .local v13, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1114
    .local v5, "label":Ljava/lang/String;
    const/4 v2, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1117
    .local v7, "keyboardLayoutResId":I
    if-eqz v13, :cond_4

    if-eqz v5, :cond_4

    if-nez v7, :cond_6

    .line 1118
    :cond_4
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1131
    :cond_5
    :goto_3
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1140
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "element":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_6
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1123
    .restart local v5    # "label":Ljava/lang/String;
    .restart local v7    # "keyboardLayoutResId":I
    .restart local v8    # "a":Landroid/content/res/TypedArray;
    .restart local v10    # "element":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_6
    :try_start_7
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v13}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1125
    .local v4, "descriptor":Ljava/lang/String;
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    move-object/from16 v2, p4

    .line 1126
    invoke-interface/range {v2 .. v7}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 1131
    .end local v4    # "descriptor":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "keyboardLayoutResId":I
    .end local v13    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 1134
    .end local v8    # "a":Landroid/content/res/TypedArray;
    :cond_8
    const-string v2, "InputManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping unrecognized element \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' in keyboard layout resource from receiver "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1199
    const-string v1, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v2, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1201
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1203
    :cond_0
    if-nez p1, :cond_1

    .line 1204
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1206
    :cond_1
    if-nez p2, :cond_2

    .line 1207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1210
    :cond_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, "oldLayout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1216
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1221
    monitor-exit v2

    .line 1222
    return-void

    .line 1219
    .end local v0    # "oldLayout":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1221
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1705
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1707
    .local v0, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v1, p1, :cond_1

    .line 1708
    :cond_0
    monitor-exit v2

    .line 1713
    :goto_0
    return-void

    .line 1710
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1712
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    goto :goto_0

    .line 1710
    .end local v0    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1734
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump InputManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    const-string v1, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->nativeDump(I)Ljava/lang/String;

    move-result-object v0

    .line 1744
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1745
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fadePointer()V
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeFadePointer(I)V

    .line 712
    return-void
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1859
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1860
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1862
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v0, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1866
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v1

    .line 1870
    :goto_1
    return v0

    .line 1868
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1869
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 1870
    const/4 v0, 0x1

    goto :goto_1

    .line 1868
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1863
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1150
    if-nez p1, :cond_0

    .line 1151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCursorPosition()[F
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeGetCursorPosition(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getDoNotUseVelocity()Z
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeGetDoNotUseVelocity(I)Z

    move-result v0

    return v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 5
    .param p1, "deviceId"    # I

    .prologue
    .line 802
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 803
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 804
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 805
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v2, v3, v1

    .line 806
    .local v2, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 807
    monitor-exit v4

    .line 811
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :goto_1
    return-object v2

    .line 804
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    monitor-exit v4

    .line 811
    const/4 v2, 0x0

    goto :goto_1

    .line 810
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getInputDeviceIds()[I
    .locals 5

    .prologue
    .line 820
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 821
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v0, v3

    .line 822
    .local v0, "count":I
    new-array v2, v0, [I

    .line 823
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 824
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v3

    aput v3, v2, v1

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    :cond_0
    monitor-exit v4

    return-object v2

    .line 827
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .locals 2

    .prologue
    .line 835
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v1

    return-object v0

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKeyCodeState(III)I
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .prologue
    .line 530
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(IIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 5
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1034
    if-nez p1, :cond_0

    .line 1035
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1038
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/hardware/input/KeyboardLayout;

    .line 1039
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1046
    aget-object v1, v0, v4

    if-nez v1, :cond_1

    .line 1047
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_1
    aget-object v1, v0, v4

    return-object v1
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 2

    .prologue
    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1029
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1187
    if-nez p1, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getScanCodeState(III)I
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .prologue
    .line 543
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(IIII)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .prologue
    .line 562
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(IIII)I

    move-result v0

    return v0
.end method

.method public getWakeFlag(II)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "keyCode"    # I

    .prologue
    .line 548
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeGetWakeFlag(III)Z

    move-result v0

    return v0
.end method

.method public hasKeys(II[I[Z)Z
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .prologue
    .line 579
    if-nez p3, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 583
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_2
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(III[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 12
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 759
    if-nez p1, :cond_0

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-eq p2, v10, :cond_1

    .line 765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 769
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 770
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 773
    .local v7, "ident":J
    :try_start_0
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    const/16 v5, 0x7530

    const/high16 v6, 0x8000000

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(ILandroid/view/InputEvent;IIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 776
    .local v9, "result":I
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    packed-switch v9, :pswitch_data_0

    .line 790
    :pswitch_0
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 791
    :goto_0
    return v0

    .line 776
    .end local v9    # "result":I
    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 780
    .restart local v9    # "result":I
    :pswitch_1
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " permission denied."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move v0, v10

    .line 784
    goto :goto_0

    .line 786
    :pswitch_3
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " timed out."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 787
    goto :goto_0

    .line 778
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isRemoteControlConnected()Z
    .locals 3

    .prologue
    .line 697
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRemoteControlConnected["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mRemoteControlConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mRemoteControlConnected:Z

    return v0
.end method

.method public isShowHoveringPointer()Z
    .locals 1

    .prologue
    .line 1400
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    return v0
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 1769
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeMonitor(I)V

    .line 1771
    return-void

    .line 1769
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 7
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 596
    if-nez p1, :cond_0

    .line 597
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "inputChannelName must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 602
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 603
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can only call from system. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :cond_1
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 608
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    aget-object v3, v0, v5

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v6}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 609
    aget-object v2, v0, v5

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 610
    aget-object v2, v0, v6

    return-object v2
.end method

.method public monitorInputEx(Ljava/lang/String;Z)Landroid/view/InputChannel;
    .locals 7
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "monitorExternal"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 621
    if-nez p1, :cond_0

    .line 622
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "inputChannelName must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 625
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 626
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 627
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can only call from system. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 630
    :cond_1
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 631
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    aget-object v3, v0, v6

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5, v5}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannelEx(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;ZZ)V

    .line 632
    aget-object v2, v0, v6

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 633
    aget-object v2, v0, v5

    return-object v2
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .prologue
    .line 1716
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1717
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1721
    return-void

    .line 1718
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2302
    invoke-static {p1}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_0
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(ILandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 650
    return-void
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .prologue
    .line 842
    if-nez p1, :cond_0

    .line 843
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "listener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 846
    :cond_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 847
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 848
    .local v1, "callingPid":I
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 849
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 864
    .end local v1    # "callingPid":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 853
    .restart local v1    # "callingPid":I
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    .local v3, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_2
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 857
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 863
    :try_start_3
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 864
    monitor-exit v5

    .line 865
    return-void

    .line 858
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 860
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public registerMouseCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2331
    invoke-static {p1}, Landroid/view/PointerIcon;->setMouseCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public reloadMousePointerIcon(IIILandroid/graphics/Point;I)V
    .locals 3
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "customIconId"    # I
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    .line 2339
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMouseIconStyle1 pointerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2341
    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->setMousePointerIcon(IILandroid/graphics/Point;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2342
    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    .line 2345
    :cond_0
    return-void
.end method

.method public reloadMousePointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I
    .locals 4
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    .line 2348
    const-string v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMouseIconStyle2 pointerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "iconType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    const/4 v0, 0x0

    .line 2350
    .local v0, "customIconId":I
    const/4 v1, -0x1

    invoke-static {v1, p3}, Landroid/view/PointerIcon;->setMouseCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 2351
    invoke-static {p2, v0, p4}, Landroid/view/PointerIcon;->setMousePointerIcon(IILandroid/graphics/Point;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2352
    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    .line 2354
    :cond_0
    return v0
.end method

.method public reloadPointerIcon(II)V
    .locals 1
    .param p1, "pointerType"    # I
    .param p2, "flag"    # I

    .prologue
    .line 1397
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcon(III)V

    .line 1398
    return-void
.end method

.method public reloadPointerIcon(IIILandroid/graphics/Point;I)V
    .locals 3
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "customIconId"    # I
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    .line 2310
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHoveringSpenIconStyle1 pointerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2312
    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->setPointerIcon(IILandroid/graphics/Point;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2313
    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    .line 2316
    :cond_0
    return-void
.end method

.method public reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I
    .locals 4
    .param p1, "pointerType"    # I
    .param p2, "iconType"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "hotSpotPoint"    # Landroid/graphics/Point;
    .param p5, "flag"    # I

    .prologue
    .line 2319
    const-string v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHoveringSpenIconStyle2 pointerType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "iconType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    const/4 v0, 0x0

    .line 2321
    .local v0, "customIconId":I
    const/4 v1, -0x1

    invoke-static {v1, p3}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 2322
    invoke-static {p2, v0, p4}, Landroid/view/PointerIcon;->setPointerIcon(IILandroid/graphics/Point;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2323
    invoke-virtual {p0, p1, p5}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(II)V

    .line 2325
    :cond_0
    return v0
.end method

.method public removeHoveringSpenCustomIcon(I)V
    .locals 1
    .param p1, "customIconId"    # I

    .prologue
    .line 2306
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I

    .line 2307
    return-void
.end method

.method public removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1227
    const-string v1, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v2, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1231
    :cond_0
    if-nez p1, :cond_1

    .line 1232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1234
    :cond_1
    if-nez p2, :cond_2

    .line 1235
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1238
    :cond_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "oldLayout":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1245
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1250
    monitor-exit v2

    .line 1251
    return-void

    .line 1248
    .end local v0    # "oldLayout":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1250
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public removeMouseCustomIcon(I)V
    .locals 1
    .param p1, "customIconId"    # I

    .prologue
    .line 2335
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->setMouseCustomIcon(ILandroid/graphics/Bitmap;)I

    .line 2336
    return-void
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 1162
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_0
    if-nez p1, :cond_1

    .line 1167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1169
    :cond_1
    if-nez p2, :cond_2

    .line 1170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1177
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1182
    monitor-exit v1

    .line 1183
    return-void

    .line 1180
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v0

    .line 1182
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public setDisplayViewports(Lcom/android/server/display/DisplayViewport;Lcom/android/server/display/DisplayViewport;)V
    .locals 2
    .param p1, "defaultViewport"    # Lcom/android/server/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Lcom/android/server/display/DisplayViewport;

    .prologue
    const/4 v1, 0x1

    .line 499
    iget-boolean v0, p1, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V

    .line 503
    :cond_0
    iget-boolean v0, p2, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_2

    .line 504
    invoke-direct {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V

    .line 508
    :cond_1
    :goto_0
    return-void

    .line 505
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_1

    .line 506
    invoke-direct {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ZLcom/android/server/display/DisplayViewport;)V

    goto :goto_0
.end method

.method public setDoNotUseVelocity(Z)I
    .locals 1
    .param p1, "doNotUseVelocity"    # Z

    .prologue
    .line 684
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetDoNotUseVelocity(IZ)I

    move-result v0

    return v0
.end method

.method public setFlipCoverTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1455
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFlipCoverTouchEnabled(IZ)V

    .line 1456
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .locals 1
    .param p1, "application"    # Lcom/android/server/input/InputApplicationHandle;

    .prologue
    .line 1298
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(ILcom/android/server/input/InputApplicationHandle;)V

    .line 1299
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .prologue
    .line 1302
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(IZZ)V

    .line 1303
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .prologue
    .line 726
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 728
    .local v0, "oldFilter":Landroid/view/IInputFilter;
    if-ne v0, p1, :cond_0

    .line 729
    monitor-exit v2

    .line 755
    :goto_0
    return-void

    .line 732
    :cond_0
    if-eqz v0, :cond_1

    .line 733
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 734
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 735
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    :try_start_1
    invoke-interface {v0}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 744
    :try_start_2
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 745
    new-instance v1, Lcom/android/server/input/InputManagerService$InputFilterHost;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 747
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v1}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 753
    :cond_2
    :goto_2
    :try_start_4
    iget v3, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-static {v3, v1}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(IZ)V

    .line 754
    monitor-exit v2

    goto :goto_0

    .end local v0    # "oldFilter":Landroid/view/IInputFilter;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 753
    .restart local v0    # "oldFilter":Landroid/view/IInputFilter;
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 738
    :catch_0
    move-exception v1

    goto :goto_1

    .line 748
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public setInputWindows([Lcom/android/server/input/InputWindowHandle;)V
    .locals 1
    .param p1, "windowHandles"    # [Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 1294
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(I[Lcom/android/server/input/InputWindowHandle;)V

    .line 1295
    return-void
.end method

.method public setLedState(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 675
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetLedState(IZ)I

    move-result v0

    return v0
.end method

.method public setMonitorChannelFilter(Landroid/view/InputChannel;I)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "monitorFilter"    # I

    .prologue
    .line 666
    if-nez p1, :cond_0

    .line 667
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetMonitorChannelFilter(ILandroid/view/InputChannel;I)V

    .line 670
    return-void
.end method

.method public setPointerBounds(FFFF)V
    .locals 2
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "maxX"    # F
    .param p4, "maxY"    # F

    .prologue
    .line 703
    const-string v0, "com.samsung.android.permission.BIND_KMS"

    const-string v1, "setPointerBounds()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_KMS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService;->nativeSetPointerBounds(IFFFF)V

    .line 708
    return-void
.end method

.method public setRemoteControlConnected(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mRemoteControlConnected:Z

    .line 693
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteControlConnected["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mRemoteControlConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method public setStartedShutdown(Z)V
    .locals 1
    .param p1, "isStarted"    # Z

    .prologue
    .line 1449
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetStartedShutdown(IZ)V

    .line 1450
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1306
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(II)V

    .line 1307
    return-void
.end method

.method public setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 15
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "isPut"    # Z
    .param p3, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 2516
    const-string v2, "WAKEKEY"

    .line 2518
    .local v2, "WAKEKEY_TAG":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2519
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "packagename: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p1, :cond_0

    const-string v12, "null"

    :goto_0
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :goto_1
    return-void

    .line 2519
    :cond_0
    const-string v12, "empty"

    goto :goto_0

    .line 2523
    :cond_1
    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2524
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-nez v10, :cond_2

    .line 2525
    const-string v12, "pm is null"

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2529
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 2530
    .local v9, "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 2531
    .local v11, "uidhaspackage":Z
    if-eqz v9, :cond_3

    array-length v12, v9

    if-nez v12, :cond_5

    .line 2532
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v9, :cond_4

    const-string v12, "null"

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v12, "empty"

    goto :goto_2

    .line 2535
    :cond_5
    move-object v4, v9

    .local v4, "arr$":[Ljava/lang/String;
    array-length v7, v4

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_6

    aget-object v8, v4, v6

    .line 2536
    .local v8, "pac":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "packagename:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", package:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2538
    const/4 v11, 0x1

    .line 2544
    .end local v8    # "pac":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .line 2546
    .local v3, "appinfo":Landroid/content/pm/ApplicationInfo;
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2547
    if-nez v3, :cond_8

    .line 2548
    const-string v12, "appinfo is null"

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2551
    :catch_0
    move-exception v5

    .line 2552
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "NameNotFoundException is occured"

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2535
    .end local v3    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "pac":Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2556
    .end local v8    # "pac":Ljava/lang/String;
    .restart local v3    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :cond_8
    if-eqz v11, :cond_9

    iget v12, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v12, v13

    if-nez v12, :cond_a

    .line 2557
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "uidhaspackage is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", appinfo.flags is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const/16 v13, 0x3e8

    if-eq v12, v13, :cond_a

    .line 2559
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "only system app can use this method, but "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not system app"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2563
    :cond_a
    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    if-nez v12, :cond_b

    .line 2564
    new-instance v12, Lcom/android/server/input/InputManagerService$ControlWakeKey;

    invoke-direct {v12}, Lcom/android/server/input/InputManagerService$ControlWakeKey;-><init>()V

    iput-object v12, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    .line 2566
    :cond_b
    iget-object v12, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/InputManagerService$ControlWakeKey;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Lcom/android/server/input/InputManagerService$ControlWakeKey;->setWakeKeyDynamically(ZLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 353
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 357
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 360
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->nativeStart(I)V

    .line 364
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 366
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 367
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 370
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowFingerHoveringSettingObserver()V

    .line 371
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowFingerHoveringPointerSettingObserver()V

    .line 375
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowHoveringPointerSettingObserver()V

    .line 379
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerGloveModeSettingObserver()V

    .line 383
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerBlockKeysSettingObserver()V

    .line 384
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerKidsModeSettingObserver()V

    .line 388
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPenHoveringSettingObserver()V

    .line 392
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerBackBlockKeysSettingObserver()V

    .line 395
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 425
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowHoveringFromSettings()V

    .line 428
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowFingerHoveringFromSettings()V

    .line 432
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateGloveModeFromSettings()V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateBlockKeysFromSettings()V

    .line 437
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateKidsModeFromSettings()V

    .line 441
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePenHoveringFromSettings()V

    .line 445
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateBackBlockKeysFromSettings()V

    .line 447
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1255
    return-void
.end method

.method public systemRunning()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 454
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 458
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 470
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 471
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 478
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 480
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .locals 2
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1323
    if-nez p1, :cond_0

    .line 1324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1326
    :cond_0
    if-nez p2, :cond_1

    .line 1327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1329
    :cond_1
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(ILandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0
.end method

.method public tryPointerSpeed(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 1334
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1339
    :cond_0
    const/4 v0, -0x7

    if-lt p1, v0, :cond_1

    const/4 v0, 0x7

    if-le p1, v0, :cond_2

    .line 1340
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1343
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1344
    return-void
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(ILandroid/view/InputChannel;)V

    .line 662
    return-void
.end method

.method public updateBackBlockKeysFromSettings()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1442
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getBackBlockKeysFromSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsBackBlockKeys:Z

    .line 1443
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mIsBackBlockKeys:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->nativeSetBackBlockKeys(IZ)V

    .line 1444
    return-void
.end method

.method public updateBlockKeysFromSettings()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1413
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getBlockKeysSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsBlockKeys:Z

    .line 1414
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mIsBlockKeys:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->nativeSetBlockKeys(IZ)V

    .line 1415
    return-void
.end method

.method public updateGloveModeFromSettings()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1406
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getGloveModeSetting(Z)Z

    move-result v0

    .line 1407
    .local v0, "gloveMode":Z
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->nativeSetGloveMode(IZ)V

    .line 1408
    return-void
.end method

.method public updateKidsModeFromSettings()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1418
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getKidsModeSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 1419
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->nativeSetKidsMode(IZ)V

    .line 1420
    return-void
.end method

.method public updatePenHoveringFromSettings()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1425
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getPenHoveringSetting(Z)Z

    move-result v0

    .line 1426
    .local v0, "penHovering":Z
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->nativeSetPenHovering(IZ)V

    .line 1437
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .locals 1

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1348
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1349
    return-void
.end method

.method public updateShowFingerHoveringFromSettings()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1385
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowFingerHoveringSetting(Z)Z

    move-result v0

    .line 1386
    .local v0, "setting":Z
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowFingerHovering(IZ)V

    .line 1387
    return-void
.end method

.method public updateShowHoveringFromSettings()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1392
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowHoveringSetting(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    .line 1393
    iget v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mIsShowHoverPointer:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->nativeSetShowHovering(IZ)V

    .line 1394
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1379
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v0

    .line 1380
    .local v0, "setting":I
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(IZ)V

    .line 1381
    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1676
    array-length v2, p2

    if-lt p3, v2, :cond_0

    .line 1677
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1681
    :cond_0
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1682
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1683
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v1, :cond_1

    .line 1684
    new-instance v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v1, p0, p1, p4, v2}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    .restart local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p4, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1691
    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1695
    monitor-enter v1

    .line 1696
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1697
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:I

    iget v3, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v2, p1, p2, p3, v3}, Lcom/android/server/input/InputManagerService;->nativeVibrate(II[JII)V

    .line 1698
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1699
    return-void

    .line 1687
    :catch_0
    move-exception v0

    .line 1689
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1693
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1698
    .restart local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method
