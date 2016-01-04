.class public Landroid/webkitsec/WebViewClientClassicExt;
.super Landroid/webkitsec/WebViewClient;
.source "WebViewClientClassicExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/webkitsec/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProceededAfterSslError(Landroid/webkitsec/WebView;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 34
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkitsec/WebView;Landroid/webkitsec/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "handler"    # Landroid/webkitsec/ClientCertRequestHandler;
    .param p3, "host_and_port"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/webkitsec/ClientCertRequestHandler;->cancel()V

    .line 52
    return-void
.end method
