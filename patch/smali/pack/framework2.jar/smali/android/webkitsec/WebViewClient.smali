.class public Landroid/webkitsec/WebViewClient;
.super Ljava/lang/Object;
.source "WebViewClient.java"


# static fields
.field public static final ERROR_AUTHENTICATION:I = -0x4

.field public static final ERROR_BAD_URL:I = -0xc

.field public static final ERROR_CONNECT:I = -0x6

.field public static final ERROR_FAILED_SSL_HANDSHAKE:I = -0xb

.field public static final ERROR_FILE:I = -0xd

.field public static final ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final ERROR_HOST_LOOKUP:I = -0x2

.field public static final ERROR_IO:I = -0x7

.field public static final ERROR_PROXY_AUTHENTICATION:I = -0x5

.field public static final ERROR_REDIRECT_LOOP:I = -0x9

.field public static final ERROR_TIMEOUT:I = -0x8

.field public static final ERROR_TOO_MANY_REQUESTS:I = -0xf

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_UNSUPPORTED_AUTH_SCHEME:I = -0x3

.field public static final ERROR_UNSUPPORTED_SCHEME:I = -0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkitsec/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 203
    return-void
.end method

.method public onFormResubmission(Landroid/webkitsec/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public onLoadResource(Landroid/webkitsec/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public onPageFinished(Landroid/webkitsec/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

.method public onPageStarted(Landroid/webkitsec/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    return-void
.end method

.method public onReceivedError(Landroid/webkitsec/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 163
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkitsec/WebView;Landroid/webkitsec/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "handler"    # Landroid/webkitsec/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p2}, Landroid/webkitsec/HttpAuthHandler;->cancel()V

    .line 242
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;

    .prologue
    .line 300
    return-void
.end method

.method public onReceivedReaderData(Landroid/webkitsec/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "readerData"    # Ljava/lang/String;

    .prologue
    .line 170
    return-void
.end method

.method public onReceivedRecognizeData(Landroid/webkitsec/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "recogdata"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public onReceivedSslError(Landroid/webkitsec/WebView;Landroid/webkitsec/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "handler"    # Landroid/webkitsec/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/webkitsec/SslErrorHandler;->cancel()V

    .line 220
    return-void
.end method

.method public onReceivedSslError(Landroid/webkitsec/WebView;Landroid/webkitsec/SslErrorHandler;Landroid/net/http/SslError;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "handler"    # Landroid/webkitsec/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;
    .param p4, "forced"    # Z

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/webkitsec/SslErrorHandler;->cancel()V

    .line 226
    return-void
.end method

.method public onScaleChanged(Landroid/webkitsec/WebView;FF)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 286
    return-void
.end method

.method public onSpellCheckFinish(Landroid/webkitsec/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "misspelledWordCount"    # I

    .prologue
    .line 311
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkitsec/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 118
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkitsec/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 272
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkitsec/WebView;Ljava/lang/String;)Landroid/webkitsec/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkitsec/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkitsec/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
