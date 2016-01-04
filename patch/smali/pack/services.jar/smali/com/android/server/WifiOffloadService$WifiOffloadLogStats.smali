.class public Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiOffloadLogStats"
.end annotation


# static fields
.field static sCriticalStats:Lcom/android/server/wifi_offload/WifiOffloadLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2314
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifi_offload/WifiOffloadLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpStats()V
    .locals 2

    .prologue
    .line 2321
    sget-object v0, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifi_offload/WifiOffloadLogger;

    if-eqz v0, :cond_0

    .line 2322
    sget-object v0, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifi_offload/WifiOffloadLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi_offload/WifiOffloadLogger;->logLastDiscourse(Z)V

    .line 2324
    :cond_0
    return-void
.end method

.method public static dumpStats(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 2327
    sget-object v0, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifi_offload/WifiOffloadLogger;

    if-eqz v0, :cond_0

    .line 2328
    sget-object v0, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifi_offload/WifiOffloadLogger;

    const-string v1, "  "

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wifi_offload/WifiOffloadLogger;->logLastDiscourse(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2330
    :cond_0
    return-void
.end method

.method public static initStats()V
    .locals 3

    .prologue
    .line 2317
    new-instance v0, Lcom/android/server/wifi_offload/WifiOffloadLogger;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi_offload/WifiOffloadLogger;-><init>(IZ)V

    sput-object v0, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifi_offload/WifiOffloadLogger;

    .line 2318
    return-void
.end method

.method public static logStats(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2333
    sget-object v0, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifi_offload/WifiOffloadLogger;

    if-eqz v0, :cond_0

    .line 2334
    sget-object v0, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->sCriticalStats:Lcom/android/server/wifi_offload/WifiOffloadLogger;

    invoke-virtual {v0, p0}, Lcom/android/server/wifi_offload/WifiOffloadLogger;->logString(Ljava/lang/String;)V

    .line 2336
    :cond_0
    return-void
.end method
