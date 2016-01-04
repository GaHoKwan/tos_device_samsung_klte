.class Landroid/webkitsec/CallbackProxy;
.super Landroid/os/Handler;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/CallbackProxy$5;,
        Landroid/webkitsec/CallbackProxy$UploadFile;,
        Landroid/webkitsec/CallbackProxy$UploadFileMessageData;,
        Landroid/webkitsec/CallbackProxy$JsResultReceiver;,
        Landroid/webkitsec/CallbackProxy$ResultTransport;
    }
.end annotation


# static fields
.field private static final ADD_HISTORY_ITEM:I = 0x87

.field private static final ADD_MESSAGE_TO_CONSOLE:I = 0x81

.field private static final ALERTDIALOG_CHECKBOX:I = 0xc9

.field private static final ASYNC_KEYEVENTS:I = 0x74

.field private static final AUTH_CREDENTIALS:I = 0x89

.field private static final AUTH_REQUEST:I = 0x68

.field private static final AUTO_LOGIN:I = 0x8c

.field private static final CLIENT_CERT_REQUEST:I = 0x8d

.field private static final CLOSE_WINDOW:I = 0x6e

.field private static final CREATE_WINDOW:I = 0x6d

.field private static final DOWNLOAD_FILE:I = 0x76

.field private static final EXCEEDED_DATABASE_QUOTA:I = 0x7e

.field private static final GEOLOCATION_PERMISSIONS_HIDE_PROMPT:I = 0x83

.field private static final GEOLOCATION_PERMISSIONS_SHOW_PROMPT:I = 0x82

.field private static final GET_VISITED_HISTORY:I = 0x85

.field private static final HISTORY_INDEX_CHANGED:I = 0x88

.field private static final IS_SEARCH_OPTION_AVAILABLE:I = 0xca

.field private static final JS_DIALOG:I = 0x70

.field private static final JS_TIMEOUT:I = 0x80

.field private static final LOAD_RESOURCE:I = 0x6c

.field private static final LOGTAG:Ljava/lang/String; = "CallbackProxy"

.field private static final NOTIFICATION_CANCEL_PROMPT:I = 0x97

.field private static final NOTIFICATION_HIDE_PROMPT:I = 0x98

.field private static final NOTIFICATION_PERMISSIONS_SHOW_PROMPT:I = 0x95

.field private static final NOTIFICATION_SEND_RESPONSE_BACK:I = 0x96

.field private static final NOTIFY:I = 0xc8

.field private static final OPEN_FILE_CHOOSER:I = 0x86

.field private static final OVERRIDE_URL:I = 0x67

.field private static final PAGE_FINISHED:I = 0x79

.field private static final PAGE_STARTED:I = 0x64

.field private static final PERF_PROBE:Z = false

.field private static final PRINT_PAGE:I = 0x94

.field private static final PROCEEDED_AFTER_SSL_ERROR:I = 0x90

.field private static final PROGRESS:I = 0x6a

.field private static final REACHED_APPCACHE_MAXSIZE:I = 0x7f

.field private static final READER_DATA:I = 0x92

.field private static final RECEIVED_CERTIFICATE:I = 0x7c

.field private static final RECEIVED_ICON:I = 0x65

.field private static final RECEIVED_TITLE:I = 0x66

.field private static final RECEIVED_TOUCH_ICON_URL:I = 0x84

.field private static final RECOG_DATA:I = 0x93

.field private static final REPORT_ERROR:I = 0x77

.field private static final REQUEST_FOCUS:I = 0x7a

.field private static final RESEND_POST_DATA:I = 0x78

.field private static final SAVE_PASSWORD:I = 0x6f

.field private static final SCALE_CHANGED:I = 0x7b

.field private static final SET_BING_SEARCH:I = 0x99

.field private static final SET_INSTALLABLE_WEBAPP:I = 0x8a

.field private static final SPELLCHECK_FINISH:I = 0x91

.field private static final SSL_ERROR:I = 0x69

.field private static final SWITCH_OUT_HISTORY:I = 0x7d

.field private static final UPDATE_URL:I = 0x9a

.field private static final UPDATE_VISITED:I = 0x6b


# instance fields
.field private final mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

.field private mBlockMessages:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mDownloadListener:Landroid/webkitsec/DownloadListener;

.field private volatile mLatestProgress:I

.field private mProgressUpdatePending:Z

.field private volatile mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

.field private volatile mWebChromeClient:Landroid/webkitsec/WebChromeClient;

.field private mWebCoreIdleTime:J

.field private mWebCoreThreadTime:J

.field private mWebFeedLinks:[Landroid/webkitsec/WebFeedLink;

.field private final mWebView:Landroid/webkitsec/WebViewClassic;

.field private volatile mWebViewClient:Landroid/webkitsec/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    .line 261
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    .line 262
    iput-object p2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 263
    new-instance v0, Landroid/webkitsec/WebBackForwardListClassic;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebBackForwardListClassic;-><init>(Landroid/webkitsec/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkitsec/CallbackProxy;->mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

    .line 264
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/CallbackProxy;)Landroid/webkitsec/WebViewClassic;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/CallbackProxy;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/CallbackProxy;)Landroid/webkitsec/WebChromeClient;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/CallbackProxy;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    return-object v0
.end method

.method private getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1288
    move-object v1, p1

    .line 1289
    .local v1, "title":Ljava/lang/String;
    invoke-static {p1}, Landroid/webkitsec/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1291
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x10405f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1302
    :goto_0
    return-object v1

    .line 1294
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1296
    .local v0, "aUrl":Ljava/net/URL;
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x10405ef

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1298
    .end local v0    # "aUrl":Ljava/net/URL;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized sendMessageToUiThreadSync(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2313
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2314
    invoke-static {}, Landroid/webkitsec/WebCoreThreadWatchdog;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2317
    :try_start_1
    const-string v1, "CallbackProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessageToUiThreadSync Package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    .line 2319
    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2328
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/webkitsec/WebCoreThreadWatchdog;->resume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2329
    monitor-exit p0

    return-void

    .line 2322
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2324
    :catch_0
    move-exception v0

    .line 2325
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "CallbackProxy"

    const-string v2, "Caught exception waiting for synchronous UI message to be processed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    const-string v1, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2313
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;
    .param p4, "msgLevel"    # I

    .prologue
    .line 2156
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    .line 2166
    :goto_0
    return-void

    .line 2160
    :cond_0
    const/16 v1, 0x81

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2161
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "sourceID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2164
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msgLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2165
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected declared-synchronized blockMessages()V
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkitsec/CallbackProxy;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method canShowAlertDialog()Z
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public createWindow(ZZ)Landroid/webkitsec/BrowserFrame;
    .locals 13
    .param p1, "dialog"    # Z
    .param p2, "userGesture"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    .line 1704
    const/4 v7, 0x0

    .line 1707
    .local v7, "frame":Landroid/webkitsec/BrowserFrame;
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    .line 1709
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening pop-up for URL "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " failed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    .line 1749
    :goto_0
    return-object v0

    .line 1716
    :cond_0
    new-instance v9, Landroid/webkitsec/WebView$WebViewTransport;

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v1}, Landroid/webkitsec/WebView$WebViewTransport;-><init>(Landroid/webkitsec/WebView;)V

    .line 1718
    .local v9, "transport":Landroid/webkitsec/WebView$WebViewTransport;
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1719
    .local v8, "msg":Landroid/os/Message;
    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1720
    const/16 v4, 0x6d

    if-eqz p1, :cond_1

    move v3, v11

    :goto_1
    if-eqz p2, :cond_2

    move v1, v11

    :goto_2
    invoke-virtual {p0, v4, v3, v1, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1722
    invoke-virtual {v9}, Landroid/webkitsec/WebView$WebViewTransport;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/webkitsec/WebViewClassic;->fromWebView(Landroid/webkitsec/WebView;)Landroid/webkitsec/WebViewClassic;

    move-result-object v10

    .line 1723
    .local v10, "w":Landroid/webkitsec/WebViewClassic;
    if-eqz v10, :cond_4

    .line 1724
    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v6

    .line 1727
    .local v6, "core":Landroid/webkitsec/WebViewCore;
    if-eqz v6, :cond_4

    .line 1728
    invoke-virtual {v6}, Landroid/webkitsec/WebViewCore;->initializeSubwindow()V

    .line 1730
    invoke-virtual {v6}, Landroid/webkitsec/WebViewCore;->getBrowserFrame()Landroid/webkitsec/BrowserFrame;

    move-result-object v7

    .line 1731
    if-eqz v7, :cond_3

    .line 1732
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening pop-up for URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v2, v11

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v7

    .line 1740
    goto :goto_0

    .end local v6    # "core":Landroid/webkitsec/WebViewCore;
    .end local v10    # "w":Landroid/webkitsec/WebViewClassic;
    :cond_1
    move v3, v2

    .line 1720
    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 1736
    .restart local v6    # "core":Landroid/webkitsec/WebViewCore;
    .restart local v10    # "w":Landroid/webkitsec/WebViewClassic;
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening pop-up for URL "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " failed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1745
    .end local v6    # "core":Landroid/webkitsec/WebViewCore;
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening pop-up for URL "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " failed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    .line 1749
    goto/16 :goto_0
.end method

.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isReload"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1515
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v0, :cond_0

    .line 1519
    :goto_0
    return-void

    .line 1518
    :cond_0
    const/16 v2, 0x6b

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1275
    iget v0, p0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    return v0
.end method

.method public getReaderData(Ljava/lang/String;)V
    .locals 3
    .param p1, "readerData"    # Ljava/lang/String;

    .prologue
    .line 1404
    const/16 v1, 0x92

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1405
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1407
    return-void
.end method

.method public getRecognizeData(Ljava/lang/String;)V
    .locals 3
    .param p1, "recogData"    # Ljava/lang/String;

    .prologue
    .line 1412
    const/16 v1, 0x93

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1413
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1415
    return-void
.end method

.method public getVisitedHistory(Landroid/webkitsec/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkitsec/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2180
    .local p1, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<[Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    .line 2186
    :goto_0
    return-void

    .line 2183
    :cond_0
    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2184
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2185
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method getWebBackForwardListClient()Landroid/webkitsec/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkitsec/WebChromeClient;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;
    .locals 1

    .prologue
    .line 1683
    monitor-enter p0

    .line 1684
    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebFeedLinks:[Landroid/webkitsec/WebFeedLink;

    monitor-exit p0

    return-object v0

    .line 1685
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWebViewClient()Landroid/webkitsec/WebViewClient;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 71
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/CallbackProxy;->messagesBlocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 406
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 407
    .local v69, "startedUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Landroid/webkitsec/WebViewClassic;->onPageStarted(Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 409
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v0, v69

    invoke-virtual {v10, v11, v0, v4}, Landroid/webkitsec/WebViewClient;->onPageStarted(Landroid/webkitsec/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 415
    .end local v69    # "startedUrl":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    .line 416
    .local v41, "finishedUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/webkitsec/WebViewClassic;->onPageFinished(Ljava/lang/String;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v41

    invoke-virtual {v4, v10, v0}, Landroid/webkitsec/WebViewClient;->onPageFinished(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    .end local v41    # "finishedUrl":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v4}, Landroid/webkitsec/WebChromeClient;->onReceivedIcon(Landroid/webkitsec/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 429
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v10, v0, :cond_2

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkitsec/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkitsec/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 436
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Landroid/webkitsec/WebChromeClient;->onReceivedTitle(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 445
    const-string v4, "CallbackProxy"

    const-string v10, "Now calling the setBingSearch of WebChromeClient.java"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/webkitsec/WebChromeClient;->setBingSearch(Landroid/webkitsec/WebView;)V

    goto/16 :goto_0

    .line 452
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 453
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v61, v0

    .line 454
    .local v61, "reasonCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "description"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 455
    .local v37, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "failingUrl"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 456
    .local v40, "failUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move/from16 v0, v61

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkitsec/WebViewClient;->onReceivedError(Landroid/webkitsec/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    .end local v37    # "description":Ljava/lang/String;
    .end local v40    # "failUrl":Ljava/lang/String;
    .end local v61    # "reasonCode":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "data"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 464
    .local v59, "readerData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v59

    invoke-virtual {v4, v10, v0}, Landroid/webkitsec/WebViewClient;->onReceivedReaderData(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    .end local v59    # "readerData":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "data"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 471
    .local v63, "recogData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v63

    invoke-virtual {v4, v10, v0}, Landroid/webkitsec/WebViewClient;->onReceivedRecognizeData(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    .end local v63    # "recogData":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "resend"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v65

    check-cast v65, Landroid/os/Message;

    .line 478
    .local v65, "resend":Landroid/os/Message;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "dontResend"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v38

    check-cast v38, Landroid/os/Message;

    .line 480
    .local v38, "dontResend":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_3

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v38

    move-object/from16 v1, v65

    invoke-virtual {v4, v10, v0, v1}, Landroid/webkitsec/WebViewClient;->onFormResubmission(Landroid/webkitsec/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 484
    :cond_3
    invoke-virtual/range {v38 .. v38}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 489
    .end local v38    # "dontResend":Landroid/os/Message;
    .end local v65    # "resend":Landroid/os/Message;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 490
    .local v57, "overrideUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/webkitsec/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v56

    .line 491
    .local v56, "override":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Landroid/webkitsec/CallbackProxy$ResultTransport;

    .line 493
    .local v66, "result":Landroid/webkitsec/CallbackProxy$ResultTransport;, "Landroid/webkitsec/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 494
    :try_start_0
    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Landroid/webkitsec/CallbackProxy$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 496
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 500
    .end local v56    # "override":Z
    .end local v57    # "overrideUrl":Ljava/lang/String;
    .end local v66    # "result":Landroid/webkitsec/CallbackProxy$ResultTransport;, "Landroid/webkitsec/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 501
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkitsec/HttpAuthHandler;

    .line 502
    .local v42, "handler":Landroid/webkitsec/HttpAuthHandler;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "host"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 503
    .local v44, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 504
    .local v60, "realm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v60

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkitsec/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkitsec/WebView;Landroid/webkitsec/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    .end local v42    # "handler":Landroid/webkitsec/HttpAuthHandler;
    .end local v44    # "host":Ljava/lang/String;
    .end local v60    # "realm":Ljava/lang/String;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 511
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 513
    .local v49, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v20

    const-string v4, "handler"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkitsec/SslErrorHandler;

    const-string v10, "error"

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/http/SslError;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkitsec/WebViewClient;->onReceivedSslError(Landroid/webkitsec/WebView;Landroid/webkitsec/SslErrorHandler;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 520
    .end local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    instance-of v4, v4, Landroid/webkitsec/WebViewClientClassicExt;

    if-eqz v4, :cond_0

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    check-cast v4, Landroid/webkitsec/WebViewClientClassicExt;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/http/SslError;

    invoke-virtual {v4, v11, v10}, Landroid/webkitsec/WebViewClientClassicExt;->onProceededAfterSslError(Landroid/webkitsec/WebView;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 528
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    instance-of v4, v4, Landroid/webkitsec/WebViewClientClassicExt;

    if-eqz v4, :cond_0

    .line 529
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 530
    .restart local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    check-cast v4, Landroid/webkitsec/WebViewClientClassicExt;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v20

    const-string v10, "handler"

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/webkitsec/ClientCertRequestHandler;

    const-string v11, "host_and_port"

    move-object/from16 v0, v49

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v10, v11}, Landroid/webkitsec/WebViewClientClassicExt;->onReceivedClientCertRequest(Landroid/webkitsec/WebView;Landroid/webkitsec/ClientCertRequestHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    .end local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_10
    monitor-enter p0

    .line 542
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_4

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    invoke-virtual {v4, v10, v11}, Landroid/webkitsec/WebChromeClient;->onProgressChanged(Landroid/webkitsec/WebView;I)V

    .line 546
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/CallbackProxy;->mProgressUpdatePending:Z

    .line 547
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 551
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 552
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v10}, Landroid/webkitsec/WebViewClient;->doUpdateVisitedHistory(Landroid/webkitsec/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 558
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 559
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Landroid/webkitsec/WebViewClient;->onLoadResource(Landroid/webkitsec/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 564
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    if-eqz v4, :cond_0

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, "url":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "userAgent"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 567
    .local v6, "userAgent":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "contentDisposition"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 569
    .local v7, "contentDisposition":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "mimetype"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 570
    .local v8, "mimetype":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "referer"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 571
    .local v9, "referer":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "contentLength"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    .line 573
    .local v35, "contentLength":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    instance-of v4, v4, Landroid/webkitsec/BrowserDownloadListener;

    if-eqz v4, :cond_6

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    check-cast v4, Landroid/webkitsec/BrowserDownloadListener;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v4 .. v11}, Landroid/webkitsec/BrowserDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 577
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-interface/range {v10 .. v16}, Landroid/webkitsec/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 584
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "userAgent":Ljava/lang/String;
    .end local v7    # "contentDisposition":Ljava/lang/String;
    .end local v8    # "mimetype":Ljava/lang/String;
    .end local v9    # "referer":Ljava/lang/String;
    .end local v35    # "contentLength":Ljava/lang/Long;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v23

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_8

    const/4 v4, 0x1

    move v10, v4

    :goto_3
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_9

    const/4 v4, 0x1

    move v11, v4

    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10, v11, v4}, Landroid/webkitsec/WebChromeClient;->onCreateWindow(Landroid/webkitsec/WebView;ZZLandroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 588
    monitor-enter p0

    .line 589
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 590
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 592
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->dismissZoomControl()V

    goto/16 :goto_0

    .line 585
    :cond_8
    const/4 v4, 0x0

    move v10, v4

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    move v11, v4

    goto :goto_4

    .line 590
    :catchall_2
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 597
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 598
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/webkitsec/WebChromeClient;->onRequestFocus(Landroid/webkitsec/WebView;)V

    goto/16 :goto_0

    .line 603
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 604
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/webkitsec/WebChromeClient;->onCloseWindow(Landroid/webkitsec/WebView;)V

    goto/16 :goto_0

    .line 609
    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v32

    .line 610
    .local v32, "bundle":Landroid/os/Bundle;
    const-string v4, "host"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 611
    .local v67, "schemePlusHost":Ljava/lang/String;
    const-string/jumbo v4, "username"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 612
    .local v70, "username":Ljava/lang/String;
    const-string/jumbo v4, "password"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 615
    .local v58, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v67

    move-object/from16 v1, v70

    move-object/from16 v2, v58

    invoke-virtual {v10, v0, v1, v2, v4}, Landroid/webkitsec/WebViewClassic;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 617
    monitor-enter p0

    .line 618
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 619
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v4

    .line 624
    .end local v32    # "bundle":Landroid/os/Bundle;
    .end local v58    # "password":Ljava/lang/String;
    .end local v67    # "schemePlusHost":Ljava/lang/String;
    .end local v70    # "username":Ljava/lang/String;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 625
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v10, v11, v4}, Landroid/webkitsec/WebViewClient;->onUnhandledKeyEvent(Landroid/webkitsec/WebView;Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 631
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 632
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 634
    .restart local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "databaseIdentifier"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 636
    .local v12, "databaseIdentifier":Ljava/lang/String;
    const-string/jumbo v4, "url"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 637
    .restart local v5    # "url":Ljava/lang/String;
    const-string/jumbo v4, "quota"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 639
    .local v13, "quota":J
    const-string/jumbo v4, "totalQuota"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 641
    .local v17, "totalQuota":J
    const-string v4, "estimatedDatabaseSize"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 643
    .local v15, "estimatedDatabaseSize":J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkitsec/WebStorage$QuotaUpdater;

    .line 646
    .local v19, "quotaUpdater":Landroid/webkitsec/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object v11, v5

    invoke-virtual/range {v10 .. v19}, Landroid/webkitsec/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkitsec/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 653
    .end local v5    # "url":Ljava/lang/String;
    .end local v12    # "databaseIdentifier":Ljava/lang/String;
    .end local v13    # "quota":J
    .end local v15    # "estimatedDatabaseSize":J
    .end local v17    # "totalQuota":J
    .end local v19    # "quotaUpdater":Landroid/webkitsec/WebStorage$QuotaUpdater;
    .end local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 654
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 656
    .restart local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "requiredStorage"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 658
    .local v21, "requiredStorage":J
    const-string/jumbo v4, "quota"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 660
    .restart local v13    # "quota":J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkitsec/WebStorage$QuotaUpdater;

    .line 663
    .restart local v19    # "quotaUpdater":Landroid/webkitsec/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v20, v0

    move-wide/from16 v23, v13

    move-object/from16 v25, v19

    invoke-virtual/range {v20 .. v25}, Landroid/webkitsec/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkitsec/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 669
    .end local v13    # "quota":J
    .end local v19    # "quotaUpdater":Landroid/webkitsec/WebStorage$QuotaUpdater;
    .end local v21    # "requiredStorage":J
    .end local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 670
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 672
    .restart local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "origin"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    .line 673
    .local v55, "origin":Ljava/lang/String;
    const-string v4, "callback"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/webkitsec/GeolocationPermissions$Callback;

    .line 676
    .local v28, "callback":Landroid/webkitsec/GeolocationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, v55

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/webkitsec/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/GeolocationPermissions$Callback;)V

    goto/16 :goto_0

    .line 682
    .end local v28    # "callback":Landroid/webkitsec/GeolocationPermissions$Callback;
    .end local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v55    # "origin":Ljava/lang/String;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkitsec/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto/16 :goto_0

    .line 689
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "notificationID"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v53

    .line 691
    .local v53, "notificationID":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/webkitsec/WebChromeClient;->onNotificationManagerCancelPrompt(I)V

    goto/16 :goto_0

    .line 696
    .end local v53    # "notificationID":I
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 697
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkitsec/WebChromeClient;->onNotificationPermissionsHidePrompt()V

    goto/16 :goto_0

    .line 702
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 704
    const-string v4, "CallbackProxy"

    const-string v10, "Inside CallbackProxy NOTIFICATION_PERMISSIONS_SHOW_PROMPT"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 708
    .restart local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "origin"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    .line 709
    .restart local v55    # "origin":Ljava/lang/String;
    const-string v4, "callback"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/webkitsec/NotificationPermissions$Callback;

    .line 712
    .local v28, "callback":Landroid/webkitsec/NotificationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, v55

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/webkitsec/WebChromeClient;->onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/NotificationPermissions$Callback;)V

    goto/16 :goto_0

    .line 718
    .end local v28    # "callback":Landroid/webkitsec/NotificationPermissions$Callback;
    .end local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v55    # "origin":Ljava/lang/String;
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 720
    const-string v4, "CallbackProxy"

    const-string v10, "Inside CallbackProxy NOTIFICATION_SEND_RESPONSE_BACK"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 724
    .restart local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "iconUrl"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/String;

    .line 725
    .local v45, "iconUrl":Ljava/lang/String;
    const-string/jumbo v4, "titleStr"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 726
    .local v25, "titleStr":Ljava/lang/String;
    const-string v4, "bodyStr"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 727
    .local v26, "bodyStr":Ljava/lang/String;
    const-string v4, "bitmap"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Bitmap;

    .line 728
    .local v24, "bm":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "counter"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 729
    .local v27, "pointerInt":I
    const-string v4, "callback"

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/webkitsec/NotificationPermissions$Callback;

    .line 732
    .restart local v28    # "callback":Landroid/webkitsec/NotificationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v28}, Landroid/webkitsec/WebChromeClient;->onNotificationManagerShowPrompt(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/NotificationPermissions$Callback;)V

    goto/16 :goto_0

    .line 739
    .end local v24    # "bm":Landroid/graphics/Bitmap;
    .end local v25    # "titleStr":Ljava/lang/String;
    .end local v26    # "bodyStr":Ljava/lang/String;
    .end local v27    # "pointerInt":I
    .end local v28    # "callback":Landroid/webkitsec/NotificationPermissions$Callback;
    .end local v45    # "iconUrl":Ljava/lang/String;
    .end local v49    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 740
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    .line 786
    .local v62, "receiver":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    new-instance v43, Landroid/webkitsec/JsDialogHelper;

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Landroid/webkitsec/JsDialogHelper;-><init>(Landroid/webkitsec/JsPromptResult;Landroid/os/Message;)V

    .line 787
    .local v43, "helper":Landroid/webkitsec/JsDialogHelper;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v4, v10}, Landroid/webkitsec/JsDialogHelper;->invokeCallback(Landroid/webkitsec/WebChromeClient;Landroid/webkitsec/WebView;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/webkitsec/JsDialogHelper;->showDialog(Landroid/content/Context;)V

    .line 791
    :cond_a
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 796
    .end local v43    # "helper":Landroid/webkitsec/JsDialogHelper;
    .end local v62    # "receiver":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 797
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    .line 798
    .restart local v62    # "receiver":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    move-object/from16 v64, v0

    .line 799
    .local v64, "res":Landroid/webkitsec/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 800
    .local v50, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 801
    .restart local v5    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v50

    move-object/from16 v1, v64

    invoke-virtual {v4, v10, v5, v0, v1}, Landroid/webkitsec/WebChromeClient;->onAlertDialogWithCheckBox(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_b

    .line 803
    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->cancel()V

    .line 804
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 807
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/webkitsec/WebChromeClient;->getBingSearchAlertDialogCheckBoxValue(Landroid/webkitsec/WebView;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 808
    const-string v4, "CallbackProxy"

    const-string/jumbo v10, "the getBingSearchAlertDialogCheckBoxValue returned true - inside CallbackProxy.java"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->cancel()V

    .line 810
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 813
    :cond_c
    const-string v4, "CallbackProxy"

    const-string v10, "\tthe getBingSearchAlertDialogCheckBoxValue returned false so we can create the dialog box - inside Callbackproxy.java"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v39

    .line 815
    .local v39, "factory":Landroid/view/LayoutInflater;
    const v4, 0x1090040

    const/4 v10, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v34

    .line 816
    .local v34, "checkBoxView":Landroid/view/View;
    const v4, 0x1020001

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    .line 817
    .local v33, "checkBox":Landroid/widget/CheckBox;
    new-instance v4, Landroid/webkitsec/CallbackProxy$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/webkitsec/CallbackProxy$1;-><init>(Landroid/webkitsec/CallbackProxy;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    const v10, 0x1040b66

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkitsec/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v10, 0x104000a

    new-instance v11, Landroid/webkitsec/CallbackProxy$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v11, v0, v1}, Landroid/webkitsec/CallbackProxy$4;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/JsResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v10, 0x1040000

    new-instance v11, Landroid/webkitsec/CallbackProxy$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v11, v0, v1}, Landroid/webkitsec/CallbackProxy$3;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/JsResult;)V

    invoke-virtual {v4, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v10, Landroid/webkitsec/CallbackProxy$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v10, v0, v1}, Landroid/webkitsec/CallbackProxy$2;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/JsResult;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 855
    .end local v33    # "checkBox":Landroid/widget/CheckBox;
    .end local v34    # "checkBoxView":Landroid/view/View;
    .end local v39    # "factory":Landroid/view/LayoutInflater;
    :cond_d
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 980
    .end local v5    # "url":Ljava/lang/String;
    .end local v50    # "message":Ljava/lang/String;
    .end local v62    # "receiver":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    .end local v64    # "res":Landroid/webkitsec/JsResult;
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 981
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    .line 982
    .restart local v62    # "receiver":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    move-object/from16 v64, v0

    .line 983
    .restart local v64    # "res":Landroid/webkitsec/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "SearchName"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 986
    .local v29, "SearchName":Ljava/lang/String;
    const-string v4, "CallbackProxy"

    const-string v10, "Now making call to isSearchOptionAvailable of WebChromeClient.java"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v4, v10, v0}, Landroid/webkitsec/WebChromeClient;->isSearchOptionAvailable(Landroid/webkitsec/WebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 990
    const-string v4, "CallbackProxy"

    const-string v10, "isSearchOptionAvailable returned true after mWebChromeClient call"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->confirm()V

    .line 999
    :goto_5
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 995
    :cond_e
    const-string v4, "CallbackProxy"

    const-string v10, "isSearchOptionAvailable returned false after mWebChromeClient call"

    invoke-static {v4, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->cancel()V

    goto :goto_5

    .line 1072
    .end local v29    # "SearchName":Ljava/lang/String;
    .end local v62    # "receiver":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    .end local v64    # "res":Landroid/webkitsec/JsResult;
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 1073
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    .line 1074
    .restart local v62    # "receiver":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    move-object/from16 v64, v0

    .line 1075
    .restart local v64    # "res":Landroid/webkitsec/JsResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkitsec/WebChromeClient;->onJsTimeout()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1076
    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->confirm()V

    .line 1080
    :goto_6
    invoke-virtual/range {v62 .. v62}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->setReady()V

    goto/16 :goto_0

    .line 1078
    :cond_f
    invoke-virtual/range {v64 .. v64}, Landroid/webkitsec/JsResult;->cancel()V

    goto :goto_6

    .line 1085
    .end local v62    # "receiver":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    .end local v64    # "res":Landroid/webkitsec/JsResult;
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/http/SslCertificate;

    invoke-virtual {v10, v4}, Landroid/webkitsec/WebViewClassic;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    .line 1089
    :pswitch_26
    monitor-enter p0

    .line 1090
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 1091
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v4

    .line 1095
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 1096
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v20, "old"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    const-string/jumbo v23, "new"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0}, Landroid/webkitsec/WebViewClient;->onScaleChanged(Landroid/webkitsec/WebView;FF)V

    goto/16 :goto_0

    .line 1102
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    goto/16 :goto_0

    .line 1106
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 1109
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "message"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1110
    .restart local v50    # "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "sourceID"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 1111
    .local v68, "sourceID":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "lineNumber"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v46

    .line 1112
    .local v46, "lineNumber":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "msgLevel"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v52

    .line 1113
    .local v52, "msgLevel":I
    invoke-static {}, Landroid/webkitsec/ConsoleMessage$MessageLevel;->values()[Landroid/webkitsec/ConsoleMessage$MessageLevel;

    move-result-object v4

    array-length v0, v4

    move/from16 v54, v0

    .line 1115
    .local v54, "numberOfMessageLevels":I
    if-ltz v52, :cond_10

    move/from16 v0, v52

    move/from16 v1, v54

    if-lt v0, v1, :cond_11

    .line 1116
    :cond_10
    const/16 v52, 0x0

    .line 1119
    :cond_11
    invoke-static {}, Landroid/webkitsec/ConsoleMessage$MessageLevel;->values()[Landroid/webkitsec/ConsoleMessage$MessageLevel;

    move-result-object v4

    aget-object v51, v4, v52

    .line 1122
    .local v51, "messageLevel":Landroid/webkitsec/ConsoleMessage$MessageLevel;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    new-instance v10, Landroid/webkitsec/ConsoleMessage;

    move-object/from16 v0, v50

    move-object/from16 v1, v68

    move/from16 v2, v46

    move-object/from16 v3, v51

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/webkitsec/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/ConsoleMessage$MessageLevel;)V

    invoke-virtual {v4, v10}, Landroid/webkitsec/WebChromeClient;->onConsoleMessage(Landroid/webkitsec/ConsoleMessage;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1126
    const-string v48, "Web Console"

    .line 1127
    .local v48, "logTag":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 1129
    .local v47, "logMessage":Ljava/lang/String;
    sget-object v4, Landroid/webkitsec/CallbackProxy$5;->$SwitchMap$android$webkitsec$ConsoleMessage$MessageLevel:[I

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v4, v4, v10

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 1131
    :pswitch_2a
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1134
    :pswitch_2b
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1137
    :pswitch_2c
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1140
    :pswitch_2d
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1143
    :pswitch_2e
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1151
    .end local v46    # "lineNumber":I
    .end local v47    # "logMessage":Ljava/lang/String;
    .end local v48    # "logTag":Ljava/lang/String;
    .end local v50    # "message":Ljava/lang/String;
    .end local v51    # "messageLevel":Landroid/webkitsec/ConsoleMessage$MessageLevel;
    .end local v52    # "msgLevel":I
    .end local v54    # "numberOfMessageLevels":I
    .end local v68    # "sourceID":Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 1152
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkitsec/ValueCallback;

    invoke-virtual {v10, v4}, Landroid/webkitsec/WebChromeClient;->getVisitedHistory(Landroid/webkitsec/ValueCallback;)V

    goto/16 :goto_0

    .line 1157
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 1158
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;

    .line 1159
    .local v36, "data":Landroid/webkitsec/CallbackProxy$UploadFileMessageData;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual/range {v36 .. v36}, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->getUploadFile()Landroid/webkitsec/CallbackProxy$UploadFile;

    move-result-object v10

    invoke-virtual/range {v36 .. v36}, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->getAcceptType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v36 .. v36}, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->getCapture()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0}, Landroid/webkitsec/WebChromeClient;->openFileChooser(Landroid/webkitsec/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1175
    .end local v36    # "data":Landroid/webkitsec/CallbackProxy$UploadFileMessageData;
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 1176
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkitsec/WebHistoryItem;

    invoke-virtual {v10, v4}, Landroid/webkitsec/WebBackForwardListClient;->onNewHistoryItem(Landroid/webkitsec/WebHistoryItem;)V

    goto/16 :goto_0

    .line 1182
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 1183
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkitsec/WebHistoryItem;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v4, v11}, Landroid/webkitsec/WebBackForwardListClient;->onIndexChanged(Landroid/webkitsec/WebHistoryItem;I)V

    goto/16 :goto_0

    .line 1188
    :pswitch_33
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "host"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1189
    .restart local v44    # "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 1190
    .restart local v60    # "realm":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "username"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 1191
    .restart local v70    # "username":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "password"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1192
    .restart local v58    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v44

    move-object/from16 v1, v60

    move-object/from16 v2, v70

    move-object/from16 v3, v58

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1216
    .end local v44    # "host":Ljava/lang/String;
    .end local v58    # "password":Ljava/lang/String;
    .end local v60    # "realm":Ljava/lang/String;
    .end local v70    # "username":Ljava/lang/String;
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 1217
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "realm"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 1218
    .restart local v60    # "realm":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "account"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1219
    .local v30, "account":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v10, "args"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1220
    .local v31, "args":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, v60

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v4, v10, v0, v1, v2}, Landroid/webkitsec/WebViewClient;->onReceivedLoginRequest(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1227
    .end local v30    # "account":Ljava/lang/String;
    .end local v31    # "args":Ljava/lang/String;
    .end local v60    # "realm":Ljava/lang/String;
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10, v11}, Landroid/webkitsec/WebViewClient;->onSpellCheckFinish(Landroid/webkitsec/WebView;I)V

    goto/16 :goto_0

    .line 1234
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-eqz v4, :cond_0

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkitsec/WebChromeClient;->onPrintPage()V

    goto/16 :goto_0

    .line 1261
    :pswitch_37
    const-string v4, "CallbackProxy"

    const-string v10, "UPDATE_URL"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1263
    .restart local v5    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v4, :cond_0

    .line 1264
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClient;->onUpdateUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_17
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_13
        :pswitch_7
        :pswitch_a
        :pswitch_2
        :pswitch_15
        :pswitch_27
        :pswitch_25
        :pswitch_28
        :pswitch_19
        :pswitch_1a
        :pswitch_24
        :pswitch_29
        :pswitch_1b
        :pswitch_1c
        :pswitch_4
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_35
        :pswitch_8
        :pswitch_9
        :pswitch_36
        :pswitch_1f
        :pswitch_20
        :pswitch_1d
        :pswitch_1e
        :pswitch_6
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_22
        :pswitch_23
    .end packed-switch

    .line 1129
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method

.method public isSearchOptionAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "SearchName"    # Ljava/lang/String;

    .prologue
    .line 1832
    const-string v2, "CallbackProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entered the isSearchOptionAvailable function of CallbackProxy.java with SearchName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 1834
    const/4 v2, 0x1

    .line 1843
    :goto_0
    return v2

    .line 1837
    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    .line 1838
    .local v1, "result":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    const/16 v2, 0xca

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1839
    .local v0, "SearchOptionCheck":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SearchName"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1842
    const-string v2, "CallbackProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exiting from the isSearchOptionAvailable function of CallbackProxy.java with value as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v4}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget-object v2, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method protected declared-synchronized messagesBlocked()Z
    .locals 1

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/CallbackProxy;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAlertDialogWithCheckBox(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1882
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 1883
    const/4 v2, 0x0

    .line 1890
    :goto_0
    return v2

    .line 1885
    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    .line 1886
    .local v1, "result":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    const/16 v2, 0xc9

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1887
    .local v0, "confirm":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1890
    iget-object v2, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onCloseWindow(Landroid/webkitsec/WebViewClassic;)V
    .locals 1
    .param p1, "window"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 1765
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_0

    .line 1769
    :goto_0
    return-void

    .line 1768
    :cond_0
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "referer"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    .prologue
    .line 1598
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    if-nez v2, :cond_0

    .line 1600
    const/4 v2, 0x0

    .line 1612
    :goto_0
    return v2

    .line 1603
    :cond_0
    const/16 v2, 0x76

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1604
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1605
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const-string/jumbo v2, "userAgent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string/jumbo v2, "referer"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    const-string v2, "contentLength"

    invoke-virtual {v0, v2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1610
    const-string v2, "contentDisposition"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1612
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkitsec/WebStorage$QuotaUpdater;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkitsec/WebStorage$QuotaUpdater;

    .prologue
    .line 1959
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 1962
    invoke-interface {p9, p3, p4}, Landroid/webkitsec/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1976
    :goto_0
    return-void

    .line 1966
    :cond_0
    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1967
    .local v0, "exceededQuota":Landroid/os/Message;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1968
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "databaseIdentifier"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    const-string/jumbo v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    const-string v2, "estimatedDatabaseSize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    const-string/jumbo v2, "totalQuota"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v1, v2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1975
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .param p1, "dontResend"    # Landroid/os/Message;
    .param p2, "resend"    # Landroid/os/Message;

    .prologue
    .line 1423
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v2, :cond_0

    .line 1424
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1433
    :goto_0
    return-void

    .line 1428
    :cond_0
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1429
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1430
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "resend"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1431
    const-string v2, "dontResend"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1432
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .prologue
    .line 2136
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    .line 2142
    :goto_0
    return-void

    .line 2140
    :cond_0
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2141
    .local v0, "hideMessage":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/GeolocationPermissions$Callback;)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkitsec/GeolocationPermissions$Callback;

    .prologue
    .line 2015
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 2026
    :goto_0
    return-void

    .line 2019
    :cond_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2021
    .local v1, "showMessage":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2022
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2025
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onIndexChanged(Landroid/webkitsec/WebHistoryItem;I)V
    .locals 3
    .param p1, "item"    # Landroid/webkitsec/WebHistoryItem;
    .param p2, "index"    # I

    .prologue
    .line 2249
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 2254
    :goto_0
    return-void

    .line 2252
    :cond_0
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2253
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1850
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 1860
    :goto_0
    return-void

    .line 1853
    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    .line 1855
    .local v1, "result":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1856
    .local v0, "alert":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1859
    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1920
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 1921
    const/4 v2, 0x1

    .line 1936
    :goto_0
    return v2

    .line 1923
    :cond_0
    new-instance v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    .line 1930
    .local v0, "result":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x70

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1931
    .local v1, "unload":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1934
    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1936
    iget-object v2, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1865
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 1866
    const/4 v2, 0x0

    .line 1875
    :goto_0
    return v2

    .line 1868
    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    .line 1870
    .local v1, "result":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1871
    .local v0, "confirm":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1874
    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1875
    iget-object v2, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method public onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1897
    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v3, :cond_0

    .line 1908
    :goto_0
    return-object v2

    .line 1900
    :cond_0
    new-instance v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    .line 1902
    .local v1, "result":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x70

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1903
    .local v0, "prompt":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1907
    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1908
    iget-object v2, v1, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsPromptResult;->getStringResult()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onJsTimeout()Z
    .locals 3

    .prologue
    .line 2170
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 2171
    const/4 v2, 0x1

    .line 2176
    :goto_0
    return v2

    .line 2173
    :cond_0
    new-instance v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/webkitsec/CallbackProxy$JsResultReceiver;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    .line 2174
    .local v0, "result":Landroid/webkitsec/CallbackProxy$JsResultReceiver;
    const/16 v2, 0x80

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2175
    .local v1, "timeout":Landroid/os/Message;
    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 2176
    iget-object v2, v0, Landroid/webkitsec/CallbackProxy$JsResultReceiver;->mJsResult:Landroid/webkitsec/JsPromptResult;

    invoke-virtual {v2}, Landroid/webkitsec/JsResult;->getResult()Z

    move-result v2

    goto :goto_0
.end method

.method onNewHistoryItem(Landroid/webkitsec/WebHistoryItem;)V
    .locals 2
    .param p1, "item"    # Landroid/webkitsec/WebHistoryItem;

    .prologue
    .line 2241
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 2246
    :goto_0
    return-void

    .line 2244
    :cond_0
    const/16 v1, 0x87

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2245
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationManagerCancelPrompt(I)V
    .locals 4
    .param p1, "notificationID"    # I

    .prologue
    .line 2104
    const-string v1, "CallbackProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside CallbackProxy onNotificationManagerCancelPrompt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    .line 2113
    :goto_0
    return-void

    .line 2109
    :cond_0
    const/16 v1, 0x97

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2110
    .local v0, "cancelMessage":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "notificationID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2111
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationManagershowPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/NotificationPermissions$Callback;)V
    .locals 7
    .param p1, "iconUrl"    # Ljava/lang/String;
    .param p2, "titleStr"    # Ljava/lang/String;
    .param p3, "bodyStr"    # Ljava/lang/String;
    .param p4, "counter"    # I
    .param p5, "callback"    # Landroid/webkitsec/NotificationPermissions$Callback;

    .prologue
    .line 2067
    const-string v4, "CallbackProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside CallbackProxy onNotificationManagershowPrompt  counter is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v4, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v4, :cond_0

    .line 2094
    :goto_0
    return-void

    .line 2072
    :cond_0
    const/16 v4, 0x96

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2074
    .local v3, "showMessage":Landroid/os/Message;
    const-string v4, "CallbackProxy"

    const-string v5, "Inside CallbackProxy before send message 1 "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2076
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "iconUrl"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    const-string/jumbo v4, "titleStr"

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    const-string v4, "bodyStr"

    invoke-virtual {v2, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    const-string v4, "callback"

    invoke-virtual {v2, v4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2082
    .local v0, "bm":Landroid/graphics/Bitmap;
    const-string v4, "bitmap"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2091
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_1
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2092
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "counter"

    invoke-virtual {v4, v5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2093
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2083
    :catch_0
    move-exception v1

    .line 2085
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 2086
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 2088
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onNotificationPermissionsHidePrompt()V
    .locals 3

    .prologue
    .line 2122
    const-string v1, "CallbackProxy"

    const-string v2, "Inside CallbackProxy onNotificationPermissionsHidePrompt "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_0

    .line 2129
    :goto_0
    return-void

    .line 2127
    :cond_0
    const/16 v1, 0x98

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2128
    .local v0, "hideMessage":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/NotificationPermissions$Callback;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkitsec/NotificationPermissions$Callback;

    .prologue
    .line 2039
    const-string v2, "CallbackProxy"

    const-string v3, "Inside CallbackProxy onNotificationPermissionsShowPrompt "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 2052
    :goto_0
    return-void

    .line 2045
    :cond_0
    const/16 v2, 0x95

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2047
    .local v1, "showMessage":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2048
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2051
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1375
    const/16 v1, 0x79

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1376
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1377
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1360
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1361
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1362
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1364
    return-void
.end method

.method public onPrintPage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1913
    const/16 v0, 0x94

    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1914
    return-void
.end method

.method public onProceededAfterSslError(Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 1484
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    instance-of v1, v1, Landroid/webkitsec/WebViewClientClassicExt;

    if-nez v1, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1487
    :cond_1
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1488
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1489
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProgressChanged(I)V
    .locals 1
    .param p1, "newProgress"    # I

    .prologue
    .line 1656
    monitor-enter p0

    .line 1659
    :try_start_0
    iget v0, p0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    if-ne v0, p1, :cond_0

    .line 1660
    monitor-exit p0

    .line 1671
    :goto_0
    return-void

    .line 1662
    :cond_0
    iput p1, p0, Landroid/webkitsec/CallbackProxy;->mLatestProgress:I

    .line 1663
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_1

    .line 1664
    monitor-exit p0

    goto :goto_0

    .line 1670
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1666
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/CallbackProxy;->mProgressUpdatePending:Z

    if-nez v0, :cond_2

    .line 1667
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/CallbackProxy;->mProgressUpdatePending:Z

    .line 1670
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkitsec/WebStorage$QuotaUpdater;)V
    .locals 4
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkitsec/WebStorage$QuotaUpdater;

    .prologue
    .line 1990
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v2, :cond_0

    .line 1993
    invoke-interface {p5, p3, p4}, Landroid/webkitsec/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 2004
    :goto_0
    return-void

    .line 1997
    :cond_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1998
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1999
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "requiredStorage"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    const-string/jumbo v2, "quota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2003
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    .line 1509
    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1510
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkitsec/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 3
    .param p1, "handler"    # Landroid/webkitsec/ClientCertRequestHandler;
    .param p2, "host_and_port"    # Ljava/lang/String;

    .prologue
    .line 1495
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    instance-of v2, v2, Landroid/webkitsec/WebViewClientClassicExt;

    if-nez v2, :cond_1

    .line 1496
    :cond_0
    invoke-virtual {p1}, Landroid/webkitsec/ClientCertRequestHandler;->cancel()V

    .line 1505
    :goto_0
    return-void

    .line 1499
    :cond_1
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1500
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1501
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    const-string v2, "host_and_port"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1504
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1389
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v1, :cond_0

    .line 1398
    :goto_0
    return-void

    .line 1393
    :cond_0
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1394
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1395
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "failingUrl"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 1642
    const/16 v1, 0x89

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1643
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1648
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkitsec/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "handler"    # Landroid/webkitsec/HttpAuthHandler;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "realmName"    # Ljava/lang/String;

    .prologue
    .line 1458
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v1, :cond_0

    .line 1459
    invoke-virtual {p1}, Landroid/webkitsec/HttpAuthHandler;->cancel()V

    .line 1466
    :goto_0
    return-void

    .line 1462
    :cond_0
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1463
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1774
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    .line 1775
    .local v0, "i":Landroid/webkitsec/WebHistoryItemClassic;
    if-eqz v0, :cond_0

    .line 1776
    invoke-virtual {v0, p1}, Landroid/webkitsec/WebHistoryItemClassic;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 1780
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_1

    .line 1784
    :goto_0
    return-void

    .line 1783
    :cond_1
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 1569
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v2, :cond_0

    .line 1578
    :goto_0
    return-void

    .line 1572
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1573
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1574
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "realm"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string v2, "account"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v2, "args"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkitsec/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "handler"    # Landroid/webkitsec/SslErrorHandler;
    .param p2, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 1471
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v2, :cond_0

    .line 1472
    invoke-virtual {p1}, Landroid/webkitsec/SslErrorHandler;->cancel()V

    .line 1481
    :goto_0
    return-void

    .line 1475
    :cond_0
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1476
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1477
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    const-string v2, "error"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1480
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1812
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_0

    .line 1816
    :goto_0
    return-void

    .line 1815
    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "precomposed"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1796
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mBackForwardList:Landroid/webkitsec/WebBackForwardListClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    .line 1797
    .local v0, "i":Landroid/webkitsec/WebHistoryItemClassic;
    if-eqz v0, :cond_0

    .line 1798
    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebHistoryItemClassic;->setTouchIconUrl(Ljava/lang/String;Z)V

    .line 1802
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v1, :cond_1

    .line 1807
    :goto_0
    return-void

    .line 1805
    :cond_1
    const/16 v3, 0x84

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v3, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onRequestFocus()V
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_0

    .line 1760
    :goto_0
    return-void

    .line 1759
    :cond_0
    const/16 v0, 0x7a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 3
    .param p1, "schemePlusHost"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "resumeMsg"    # Landroid/os/Message;

    .prologue
    .line 1626
    invoke-static {p4}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 1628
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    .line 1630
    const/16 v2, 0x6f

    invoke-virtual {p0, v2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1631
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1632
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1637
    const/4 v2, 0x0

    return v2
.end method

.method public onScaleChanged(FF)V
    .locals 3
    .param p1, "oldScale"    # F
    .param p2, "newScale"    # F

    .prologue
    .line 1556
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v2, :cond_0

    .line 1564
    :goto_0
    return-void

    .line 1559
    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1560
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1561
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "old"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1562
    const-string/jumbo v2, "new"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1563
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onSpellCheckFinish(I)V
    .locals 2
    .param p1, "misspelledWordCount"    # I

    .prologue
    .line 1581
    const/16 v0, 0x91

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1582
    return-void
.end method

.method public onTooManyRedirects(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "cancelMsg"    # Landroid/os/Message;
    .param p2, "continueMsg"    # Landroid/os/Message;

    .prologue
    .line 1383
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1547
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v0, :cond_0

    .line 1551
    :goto_0
    return-void

    .line 1550
    :cond_0
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onUpdateUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2307
    const/16 v1, 0x9a

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2308
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2310
    return-void
.end method

.method openFileChooser(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "acceptType"    # Ljava/lang/String;
    .param p2, "capture"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2229
    iget-object v4, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v4, :cond_0

    .line 2237
    :goto_0
    return-object v3

    .line 2232
    :cond_0
    const/16 v4, 0x86

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2233
    .local v1, "myMessage":Landroid/os/Message;
    new-instance v2, Landroid/webkitsec/CallbackProxy$UploadFile;

    invoke-direct {v2, p0, v3}, Landroid/webkitsec/CallbackProxy$UploadFile;-><init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V

    .line 2234
    .local v2, "uploadFile":Landroid/webkitsec/CallbackProxy$UploadFile;
    new-instance v0, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;

    invoke-direct {v0, v2, p1, p2}, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;-><init>(Landroid/webkitsec/CallbackProxy$UploadFile;Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    .local v0, "data":Landroid/webkitsec/CallbackProxy$UploadFileMessageData;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2236
    invoke-direct {p0, v1}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 2237
    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy$UploadFile;->getResult()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public setBingSearch()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    if-nez v0, :cond_0

    .line 1827
    :goto_0
    return-void

    .line 1824
    :cond_0
    const-string v0, "CallbackProxy"

    const-string v1, "Sending the SET_BING_SEARCH message inside CallbackProxy.java"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const/16 v0, 0x99

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setDownloadListener(Landroid/webkitsec/DownloadListener;)V
    .locals 0
    .param p1, "client"    # Landroid/webkitsec/DownloadListener;

    .prologue
    .line 317
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mDownloadListener:Landroid/webkitsec/DownloadListener;

    .line 318
    return-void
.end method

.method setWebBackForwardListClient(Landroid/webkitsec/WebBackForwardListClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkitsec/WebBackForwardListClient;

    .prologue
    .line 329
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mWebBackForwardListClient:Landroid/webkitsec/WebBackForwardListClient;

    .line 330
    return-void
.end method

.method public setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkitsec/WebChromeClient;

    .prologue
    .line 301
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mWebChromeClient:Landroid/webkitsec/WebChromeClient;

    .line 302
    return-void
.end method

.method public setWebFeedLinks([Landroid/webkitsec/WebFeedLink;)V
    .locals 1
    .param p1, "links"    # [Landroid/webkitsec/WebFeedLink;

    .prologue
    .line 1697
    monitor-enter p0

    .line 1698
    :try_start_0
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mWebFeedLinks:[Landroid/webkitsec/WebFeedLink;

    .line 1699
    monitor-exit p0

    .line 1700
    return-void

    .line 1699
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebViewClient(Landroid/webkitsec/WebViewClient;)V
    .locals 0
    .param p1, "client"    # Landroid/webkitsec/WebViewClient;

    .prologue
    .line 285
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    .line 286
    return-void
.end method

.method shouldInterceptRequest(Ljava/lang/String;)Landroid/webkitsec/WebResourceResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1527
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-nez v1, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-object v0

    .line 1531
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_0

    .line 1536
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/webkitsec/WebViewClient;->shouldInterceptRequest(Landroid/webkitsec/WebView;Ljava/lang/String;)Landroid/webkitsec/WebResourceResponse;

    move-result-object v0

    .line 1538
    .local v0, "r":Landroid/webkitsec/WebResourceResponse;
    if-nez v0, :cond_0

    .line 1539
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1446
    new-instance v1, Landroid/webkitsec/CallbackProxy$ResultTransport;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkitsec/CallbackProxy$ResultTransport;-><init>(Ljava/lang/Object;)V

    .line 1447
    .local v1, "res":Landroid/webkitsec/CallbackProxy$ResultTransport;, "Landroid/webkitsec/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1448
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1450
    invoke-direct {p0, v0}, Landroid/webkitsec/CallbackProxy;->sendMessageToUiThreadSync(Landroid/os/Message;)V

    .line 1451
    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method protected shutdown()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p0, v0}, Landroid/webkitsec/CallbackProxy;->setWebViewClient(Landroid/webkitsec/WebViewClient;)V

    .line 277
    invoke-virtual {p0, v0}, Landroid/webkitsec/CallbackProxy;->setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V

    .line 278
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 1

    .prologue
    .line 1282
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1283
    return-void
.end method

.method public uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 391
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    iget-object v1, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkitsec/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uiOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 5
    .param p1, "overrideUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 341
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v1

    .line 345
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v2, :cond_0

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "override":Z
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebViewClient:Landroid/webkitsec/WebViewClient;

    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/webkitsec/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkitsec/WebView;Ljava/lang/String;)Z

    move-result v1

    .line 357
    const-string v2, "WebCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uiOverrideUrlLoading: shouldOverrideUrlLoading() returns"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 372
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    const/4 v1, 0x1

    goto :goto_0

    .line 379
    :catch_0
    move-exception v2

    goto :goto_0
.end method
