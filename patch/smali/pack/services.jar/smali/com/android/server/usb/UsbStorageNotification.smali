.class public Lcom/android/server/usb/UsbStorageNotification;
.super Ljava/lang/Object;
.source "UsbStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbStorageNotification"


# instance fields
.field private final UPDATE_DELAY:I

.field private final USBHOST_UPDATE_STATE:I

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/usb/UsbNotificationHandler;

.field private mNeedIntent:Z

.field private mNotificationEventHandler:Landroid/os/Handler;

.field private mReady:Z

.field private mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbNotificationHandler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/android/server/usb/UsbNotificationHandler;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mReady:Z

    .line 98
    new-instance v1, Lcom/android/server/usb/UsbStorageNotification$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbStorageNotification$1;-><init>(Lcom/android/server/usb/UsbStorageNotification;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 111
    iput-boolean v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    .line 112
    new-instance v1, Lcom/android/server/usb/UsbStorageNotification$2;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbStorageNotification$2;-><init>(Lcom/android/server/usb/UsbStorageNotification;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/usb/UsbStorageNotification;->USBHOST_UPDATE_STATE:I

    .line 202
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/server/usb/UsbStorageNotification;->UPDATE_DELAY:I

    .line 54
    iput-object p1, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    .line 56
    const-string/jumbo v1, "storage"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 57
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 61
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 65
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbStorageNotification"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "thr2":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    new-instance v1, Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;-><init>(Lcom/android/server/usb/UsbStorageNotification;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    .line 68
    return-void

    .line 63
    .end local v0    # "thr2":Landroid/os/HandlerThread;
    :cond_0
    const-string v1, "UsbStorageNotification"

    const-string v2, "not yet inialized the mountservice ?"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbStorageNotification;->onUsbHostStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbStorageNotification;->onWaterProofing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/usb/UsbStorageNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/server/usb/UsbStorageNotification;->mReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbStorageNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbStorageNotification;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbStorageNotification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbStorageNotification;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isSDCard(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 83
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 84
    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v2, 0x1

    .line 89
    :goto_1
    return v2

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isUsbHostDevice(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 72
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbStorageNotification;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v2, 0x1

    .line 78
    :goto_1
    return v2

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onUsbHostStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbStorageNotification;->isUsbHostDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v1, "UsbStorageNotification"

    const-string v2, "onUsbHostStateChanged :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    :cond_2
    const-string v1, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v3, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.usb.UsbStorageUnmountActivity"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 162
    .local v9, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v5, 0x1040747

    const v6, 0x1040749

    const v7, 0x1080890

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "UsbDevices"

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZLandroid/app/PendingIntent;ZLjava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    :cond_3
    const-string v1, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const-string v2, "UsbDevices"

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_4
    const-string v1, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    const-string/jumbo v1, "sys.fakeShutdown.state"

    const-string v2, "power_on"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 172
    .local v17, "fakeState":Ljava/lang/String;
    const-string v1, "UsbStorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fake state : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v1, "power_on"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v11, 0x104074a

    const v12, 0x104074b

    const v13, 0x108008a

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string v16, "UsbDevices"

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 180
    .end local v17    # "fakeState":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 182
    .local v18, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbStorageNotification;->mNotificationEventHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 183
    const-string v1, "UsbStorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUsbHostStateChanged :: failed to send message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const-string v2, "UsbDevices"

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v18    # "msg":Landroid/os/Message;
    :cond_7
    const-string v1, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v11, 0x104077e

    const v12, 0x1040780

    const v13, 0x108007b

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v16, "UsbDevices"

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_8
    const-string/jumbo v1, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/usb/UsbStorageNotification;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v11, 0x1040782

    const v12, 0x1040784

    const v13, 0x108007b

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v16, "UsbDevices"

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onWaterProofing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbStorageNotification;->isSDCard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v0, "UsbStorageNotification"

    const-string v1, "onWaterProofing :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "removed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bad_removal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/usb/UsbStorageNotification;->mReady:Z

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {p0}, Lcom/android/server/usb/UsbStorageNotification;->sendWaterProfingIntent()V

    goto :goto_0

    .line 139
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/usb/UsbStorageNotification;->mNeedIntent:Z

    goto :goto_0
.end method


# virtual methods
.method sendWaterProfingIntent()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.popupuireceiver.action.BATTERY_COVER_WATERPROOF_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intentToPopup":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 95
    const-string v1, "UsbStorageNotification"

    const-string v2, "onWaterProofing : Sent the intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
