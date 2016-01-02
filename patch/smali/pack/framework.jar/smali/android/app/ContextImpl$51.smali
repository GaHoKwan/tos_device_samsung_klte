.class final Landroid/app/ContextImpl$51;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 769
    const-string v2, "ContextImpl"

    const-string v3, "create offload service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v2, "wifioffload"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 771
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiOffloadManager;

    move-result-object v1

    .line 772
    .local v1, "service":Landroid/net/wifi/IWifiOffloadManager;
    const-string v2, "ContextImpl"

    const-string v3, "return wifioffload service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v2, Landroid/net/wifi/WifiOffloadManager;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiOffloadManager;-><init>(Landroid/net/wifi/IWifiOffloadManager;)V

    return-object v2
.end method
