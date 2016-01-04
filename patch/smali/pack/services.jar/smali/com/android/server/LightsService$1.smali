.class Lcom/android/server/LightsService$1;
.super Landroid/os/IHardwareService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/class/leds/spotlight/brightness"


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/os/IHardwareService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashlightEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 345
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 346
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 347
    .local v2, "result":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    const/4 v3, 0x1

    .line 350
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "result":I
    :cond_0
    :goto_0
    return v3

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setFlashlightEnabled(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 355
    iget-object v2, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$1400(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.FLASHLIGHT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$1400(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.HARDWARE_TEST"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FLASHLIGHT or HARDWARE_TEST permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 364
    .local v0, "bytes":[B
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0x31

    :goto_0
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 365
    const/4 v2, 0x1

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 366
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 367
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0    # "bytes":[B
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 364
    .restart local v0    # "bytes":[B
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    const/16 v2, 0x30

    goto :goto_0

    .line 368
    .end local v0    # "bytes":[B
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public turnOffButtonLightOneShot()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-virtual {v0}, Lcom/android/server/LightsService;->turnOffButtonLight()V

    .line 394
    return-void
.end method

.method public turnOnButtonLightOneShot()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 374
    iget-object v0, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1400(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.HARDWARE_TEST"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FLASHLIGHT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mButtonLightEnable:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1600(Lcom/android/server/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mButtonBrightness:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1700(Lcom/android/server/LightsService;)I

    move-result v0

    if-lez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    iget-object v1, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mButtonBrightness:I
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1700(Lcom/android/server/LightsService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService;->setBrightnessButtonLight(I)V

    .line 384
    iget-object v0, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$1500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1500(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mButtonLightTimeout:I
    invoke-static {v2}, Lcom/android/server/LightsService;->access$1800(Lcom/android/server/LightsService;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-virtual {v0}, Lcom/android/server/LightsService;->turnOffButtonLight()V

    goto :goto_0
.end method
