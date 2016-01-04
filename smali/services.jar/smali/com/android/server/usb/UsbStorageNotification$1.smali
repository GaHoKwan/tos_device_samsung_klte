.class Lcom/android/server/usb/UsbStorageNotification$1;
.super Landroid/os/storage/StorageEventListener;
.source "UsbStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbStorageNotification;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbStorageNotification;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/usb/UsbStorageNotification$1;->this$0:Lcom/android/server/usb/UsbStorageNotification;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/usb/UsbStorageNotification$1;->this$0:Lcom/android/server/usb/UsbStorageNotification;

    # invokes: Lcom/android/server/usb/UsbStorageNotification;->onUsbHostStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usb/UsbStorageNotification;->access$000(Lcom/android/server/usb/UsbStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/usb/UsbStorageNotification$1;->this$0:Lcom/android/server/usb/UsbStorageNotification;

    # invokes: Lcom/android/server/usb/UsbStorageNotification;->onWaterProofing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usb/UsbStorageNotification;->access$100(Lcom/android/server/usb/UsbStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 101
    return-void
.end method
