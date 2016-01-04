.class Lcom/android/server/power/FakeShutdown$Radio;
.super Ljava/lang/Object;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Radio"
.end annotation


# static fields
.field private static oldBluetoothStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeAirplaneMode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 371
    const-string v1, "FakeShutdown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAirplaneMode state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method public static off(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 284
    invoke-static {p0}, Lcom/android/server/power/FakeShutdown$Radio;->offBluetooth(Landroid/content/Context;)V

    .line 285
    const-string v1, "oldAirplaneStatus"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/server/power/FakeShutdown$SysSetting;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 287
    .local v0, "airplane":I
    if-eq v0, v3, :cond_0

    .line 288
    invoke-static {p0, v3}, Lcom/android/server/power/FakeShutdown$Radio;->changeAirplaneMode(Landroid/content/Context;I)V

    .line 291
    :cond_0
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/android/server/power/FakeShutdown$Radio;->waitForPhoneOff(I)V

    .line 293
    return-void
.end method

.method private static offBluetooth(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 361
    const-string v0, "bluetooth_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->getSecure(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    .line 364
    sget v0, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    if-ne v0, v2, :cond_0

    .line 365
    const-string v0, "FakeShutdown"

    const-string v1, "!@ [p9p9] Settings.Secure.putInt - BLUETOOTH_ON 1"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v0, "bluetooth_on"

    invoke-static {p0, v0, v2}, Lcom/android/server/power/FakeShutdown$SysSetting;->putSecure(Landroid/content/Context;Ljava/lang/String;I)V

    .line 368
    :cond_0
    return-void
.end method

.method public static on(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 296
    invoke-static {p0}, Lcom/android/server/power/FakeShutdown$Radio;->restoreAirplane(Landroid/content/Context;)V

    .line 297
    invoke-static {p0}, Lcom/android/server/power/FakeShutdown$Radio;->restoreBluetooth(Landroid/content/Context;)V

    .line 298
    return-void
.end method

.method private static restoreAirplane(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 301
    const-string v1, "FakeShutdown"

    const-string v2, "!@restoreAirplaneMode"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v1, "oldAirplaneStatus"

    invoke-static {p0, v1, v3}, Lcom/android/server/power/FakeShutdown$SysSetting;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 305
    .local v0, "oldAirplaneStatus":I
    if-eq v0, v3, :cond_0

    .line 306
    invoke-static {p0, v0}, Lcom/android/server/power/FakeShutdown$Radio;->changeAirplaneMode(Landroid/content/Context;I)V

    .line 308
    :cond_0
    return-void
.end method

.method private static restoreBluetooth(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 344
    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 346
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    const-string v2, "bluetooth_on"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/server/power/FakeShutdown$SysSetting;->getSecure(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    .line 349
    :try_start_0
    sget v2, Lcom/android/server/power/FakeShutdown$Radio;->oldBluetoothStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 350
    const-string v2, "FakeShutdown"

    const-string v3, "!@ [p9p9] bluetooth.enable();"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "FakeShutdown"

    const-string v3, "!@RemoteException during bluetooth enable"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private static waitForPhoneOff(I)V
    .locals 9
    .param p0, "timeoutSec"    # I

    .prologue
    .line 312
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 313
    .local v3, "phone":Lcom/android/internal/telephony/ITelephony;
    const/4 v4, 0x0

    .line 315
    .local v4, "radioOff":Z
    const/16 v0, 0x1f4

    .line 316
    .local v0, "PHONE_STATE_POLL_SLEEP_MSEC":I
    mul-int/lit16 v6, p0, 0x3e8

    div-int/lit16 v5, v6, 0x1f4

    .line 318
    .local v5, "timeoutCount":I
    const-string v6, "FakeShutdown"

    const-string v7, "!@waitForPhoneOff"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v2, 0x0

    .local v2, "loopCount":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 321
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    const/4 v4, 0x1

    .line 326
    :goto_1
    if-eqz v4, :cond_3

    .line 327
    const-string v6, "FakeShutdown"

    const-string v7, "!@Radio turned off"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    const-string v6, "FakeShutdown"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@off takes ms "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit16 v8, v2, 0x1f4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-nez v4, :cond_1

    .line 337
    const-string v6, "FakeShutdown"

    const-string v7, "!@Radio turned off fail"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    return-void

    .line 321
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v6, "FakeShutdown"

    const-string v7, "RemoteException during radio shutdown"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 324
    const/4 v4, 0x1

    goto :goto_1

    .line 330
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    const-string v6, "FakeShutdown"

    const-string v7, "!@before sleep"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 332
    const-string v6, "FakeShutdown"

    const-string v7, "!@after sleep"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
