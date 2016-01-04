.class Lcom/android/server/usb/UsbHostManager$3;
.super Landroid/os/UEventObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 20
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$600(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 451
    :try_start_0
    const-string v1, "DEVPATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, "devPath":Ljava/lang/String;
    const-string v1, "ACTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "action":Ljava/lang/String;
    const-string v1, "DEVTYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 454
    .local v12, "devtype":Ljava/lang/String;
    const-string v1, "DEVICE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 455
    .local v11, "device":Ljava/lang/String;
    const-string v1, "PRODUCT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 456
    .local v15, "product":Ljava/lang/String;
    const-string v1, "TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 457
    .local v17, "type":Ljava/lang/String;
    const-string v1, "INTERFACE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 459
    .local v14, "interfac":Ljava/lang/String;
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onUEvent(device) :: action = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", devtype = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", device = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", product = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", type = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", interface = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, ", devpath = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :try_start_1
    const-string v1, "/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 466
    .local v16, "tok":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v7, v16, v1

    .line 467
    .local v7, "Class":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v9, v16, v1

    .line 468
    .local v9, "SubClass":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v8, v16, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    .local v8, "Protocal":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v9, :cond_0

    if-nez v8, :cond_1

    :cond_0
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    .end local v7    # "Class":Ljava/lang/String;
    .end local v8    # "Protocal":Ljava/lang/String;
    .end local v9    # "SubClass":Ljava/lang/String;
    .end local v16    # "tok":[Ljava/lang/String;
    :goto_0
    return-void

    .line 472
    .restart local v7    # "Class":Ljava/lang/String;
    .restart local v8    # "Protocal":Ljava/lang/String;
    .restart local v9    # "SubClass":Ljava/lang/String;
    .restart local v16    # "tok":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :try_start_3
    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 473
    .local v3, "iClass":I
    const/4 v1, 0x1

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 474
    .local v4, "iSubClass":I
    const/4 v1, 0x2

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 476
    .local v5, "iProtocal":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$3;->this$0:Lcom/android/server/usb/UsbHostManager;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    .end local v3    # "iClass":I
    .end local v4    # "iSubClass":I
    .end local v5    # "iProtocal":I
    .end local v7    # "Class":Ljava/lang/String;
    .end local v8    # "Protocal":Ljava/lang/String;
    .end local v9    # "SubClass":Ljava/lang/String;
    .end local v16    # "tok":[Ljava/lang/String;
    :goto_1
    :try_start_4
    monitor-exit v18

    goto :goto_0

    .end local v2    # "action":Ljava/lang/String;
    .end local v10    # "devPath":Ljava/lang/String;
    .end local v11    # "device":Ljava/lang/String;
    .end local v12    # "devtype":Ljava/lang/String;
    .end local v14    # "interfac":Ljava/lang/String;
    .end local v15    # "product":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 477
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v10    # "devPath":Ljava/lang/String;
    .restart local v11    # "device":Ljava/lang/String;
    .restart local v12    # "devtype":Ljava/lang/String;
    .restart local v14    # "interfac":Ljava/lang/String;
    .restart local v15    # "product":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 478
    .local v13, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not parse state or devPath from event "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 479
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v13

    .line 480
    .local v13, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ArrayIndexOutOfBoundsException "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
