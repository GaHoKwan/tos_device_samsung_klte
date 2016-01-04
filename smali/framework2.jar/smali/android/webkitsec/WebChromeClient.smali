.class public Landroid/webkitsec/WebChromeClient;
.super Ljava/lang/Object;
.source "WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebChromeClient$CustomViewCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBingSearchAlertDialogCheckBoxValue(Landroid/webkitsec/WebView;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkitsec/ValueCallback;)V
    .locals 0
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
    .line 442
    .local p1, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<[Ljava/lang/String;>;"
    return-void
.end method

.method public isBingSearch(Landroid/webkitsec/WebView;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSearchOptionAvailable(Landroid/webkitsec/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "SearchName"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onAlertDialogWithCheckBox(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkitsec/JsResult;

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseWindow(Landroid/webkitsec/WebView;)V
    .locals 0
    .param p1, "window"    # Landroid/webkitsec/WebView;

    .prologue
    .line 189
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    return-void
.end method

.method public onConsoleMessage(Landroid/webkitsec/ConsoleMessage;)Z
    .locals 3
    .param p1, "consoleMessage"    # Landroid/webkitsec/ConsoleMessage;

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/webkitsec/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkitsec/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {p1}, Landroid/webkitsec/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkitsec/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateWindow(Landroid/webkitsec/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkitsec/WebStorage$QuotaUpdater;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J
    .param p7, "totalQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkitsec/WebStorage$QuotaUpdater;

    .prologue
    .line 290
    invoke-interface {p9, p3, p4}, Landroid/webkitsec/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 291
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/GeolocationPermissions$Callback;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkitsec/GeolocationPermissions$Callback;

    .prologue
    .line 327
    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onJsAlert(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkitsec/JsResult;

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkitsec/JsResult;

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public onJsConfirm(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkitsec/JsResult;

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public onJsPrompt(Landroid/webkitsec/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkitsec/JsPromptResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkitsec/JsPromptResult;

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public onNotificationManagerCancelPrompt(I)V
    .locals 0
    .param p1, "notificationID"    # I

    .prologue
    .line 363
    return-void
.end method

.method public onNotificationManagerShowPrompt(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/NotificationPermissions$Callback;)V
    .locals 0
    .param p1, "iconUrl"    # Landroid/graphics/Bitmap;
    .param p2, "titleStr"    # Ljava/lang/String;
    .param p3, "bodyStr"    # Ljava/lang/String;
    .param p4, "pointer"    # I
    .param p5, "callback"    # Landroid/webkitsec/NotificationPermissions$Callback;

    .prologue
    .line 356
    return-void
.end method

.method public onNotificationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/NotificationPermissions$Callback;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkitsec/NotificationPermissions$Callback;

    .prologue
    .line 348
    return-void
.end method

.method public onPrintPage()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onProgressChanged(Landroid/webkitsec/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 33
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkitsec/WebStorage$QuotaUpdater;)V
    .locals 0
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkitsec/WebStorage$QuotaUpdater;

    .prologue
    .line 312
    invoke-interface {p5, p3, p4}, Landroid/webkitsec/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 313
    return-void
.end method

.method public onReceivedIcon(Landroid/webkitsec/WebView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    return-void
.end method

.method public onReceivedTitle(Landroid/webkitsec/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 40
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkitsec/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 82
    return-void
.end method

.method public onRequestFocus(Landroid/webkitsec/WebView;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;

    .prologue
    .line 180
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkitsec/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "requestedOrientation"    # I
    .param p3, "callback"    # Landroid/webkitsec/WebChromeClient$CustomViewCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkitsec/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkitsec/WebChromeClient$CustomViewCallback;

    .prologue
    .line 105
    return-void
.end method

.method public openFileChooser(Landroid/webkitsec/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "uploadFile":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 456
    return-void
.end method

.method public setBingSearch(Landroid/webkitsec/WebView;)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;

    .prologue
    .line 48
    return-void
.end method

.method public setBingSearchAlertDialogCheckBoxValue(Landroid/webkitsec/WebView;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkitsec/WebView;
    .param p2, "value"    # Z

    .prologue
    .line 166
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 475
    return-void
.end method
