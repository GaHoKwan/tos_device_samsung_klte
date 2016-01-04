.class Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;


# direct methods
.method constructor <init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-static {p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    move-result-object v1

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 180
    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 184
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    .line 172
    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 175
    return-void
.end method
