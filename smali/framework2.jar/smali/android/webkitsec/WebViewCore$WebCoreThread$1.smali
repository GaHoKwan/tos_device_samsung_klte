.class Landroid/webkitsec/WebViewCore$WebCoreThread$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewCore$WebCoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewCore$WebCoreThread;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewCore$WebCoreThread;)V
    .locals 0

    .prologue
    .line 1032
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkitsec/WebViewCore$WebCoreThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1035
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1089
    :goto_0
    return-void

    .line 1037
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkitsec/WebViewCore;

    .line 1038
    .local v0, "core":Landroid/webkitsec/WebViewCore;
    # invokes: Landroid/webkitsec/WebViewCore;->initialize()V
    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->access$700(Landroid/webkitsec/WebViewCore;)V

    goto :goto_0

    .line 1043
    .end local v0    # "core":Landroid/webkitsec/WebViewCore;
    :sswitch_1
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 1049
    :sswitch_2
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 1054
    :sswitch_3
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_0

    .line 1055
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No WebView has been created in this process!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1058
    :cond_0
    sget-object v3, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/webkitsec/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :sswitch_4
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_1

    .line 1063
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No WebView has been created in this process!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1066
    :cond_1
    sget-object v3, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/webkitsec/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 1070
    :sswitch_5
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_2

    .line 1071
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No WebView has been created in this process!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1074
    :cond_2
    sget-object v3, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/ProxyProperties;

    invoke-virtual {v3, v2}, Landroid/webkitsec/JWebCoreJavaBridge;->updateProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 1080
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1081
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1085
    .end local v1    # "m":Landroid/os/Message;
    :sswitch_7
    # invokes: Landroid/webkitsec/WebViewCore;->nativeCertTrustChanged()V
    invoke-static {}, Landroid/webkitsec/WebViewCore;->access$800()V

    .line 1086
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->handleTrustStorageUpdate()V

    goto :goto_0

    .line 1035
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb9 -> :sswitch_3
        0xba -> :sswitch_4
        0xc1 -> :sswitch_5
        0xc5 -> :sswitch_6
        0xdc -> :sswitch_7
    .end sparse-switch
.end method
