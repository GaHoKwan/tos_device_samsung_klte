.class Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;
.super Ljava/lang/Thread;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->delayedBTOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 272
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 273
    .local v1, "condition":Landroid/os/ConditionVariable;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 274
    .local v2, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 276
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    new-instance v3, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2$1;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;Landroid/os/ConditionVariable;)V

    .line 288
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    # getter for: Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->access$200(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    .line 290
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 291
    return-void
.end method
