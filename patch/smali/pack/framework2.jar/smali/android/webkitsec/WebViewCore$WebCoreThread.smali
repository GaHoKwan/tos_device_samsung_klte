.class Landroid/webkitsec/WebViewCore$WebCoreThread;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebCoreThread"
.end annotation


# static fields
.field private static final INITIALIZE:I = 0x0

.field private static final REDUCE_PRIORITY:I = 0x1

.field private static final RESUME_PRIORITY:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewCore$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/WebViewCore$1;

    .prologue
    .line 1021
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore$WebCoreThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1029
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1030
    # getter for: Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/webkitsec/WebViewCore;->access$600()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 1031
    const-class v1, Landroid/webkitsec/WebViewCore;

    monitor-enter v1

    .line 1032
    :try_start_0
    new-instance v0, Landroid/webkitsec/WebViewCore$WebCoreThread$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewCore$WebCoreThread$1;-><init>(Landroid/webkitsec/WebViewCore$WebCoreThread;)V

    # setter for: Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->access$602(Landroid/os/Handler;)Landroid/os/Handler;

    .line 1091
    const-class v0, Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1092
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1094
    return-void

    .line 1092
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
