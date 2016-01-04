.class public final Landroid/webkitsec/MockGeolocation;
.super Ljava/lang/Object;
.source "MockGeolocation.java"


# instance fields
.field private mWebViewCore:Landroid/webkitsec/WebViewCore;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewCore;)V
    .locals 0
    .param p1, "webViewCore"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    .line 28
    return-void
.end method

.method private static native nativeSetError(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
.end method

.method private static native nativeSetPermission(Landroid/webkitsec/WebViewCore;Z)V
.end method

.method private static native nativeSetPosition(Landroid/webkitsec/WebViewCore;DDD)V
.end method

.method private static native nativeSetUseMock(Landroid/webkitsec/WebViewCore;)V
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0, p1, p2}, Landroid/webkitsec/MockGeolocation;->nativeSetError(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    .line 51
    return-void
.end method

.method public setPermission(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0, p1}, Landroid/webkitsec/MockGeolocation;->nativeSetPermission(Landroid/webkitsec/WebViewCore;Z)V

    .line 72
    return-void
.end method

.method public setPosition(DDD)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "accuracy"    # D

    .prologue
    .line 42
    iget-object v0, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Landroid/webkitsec/MockGeolocation;->nativeSetPosition(Landroid/webkitsec/WebViewCore;DDD)V

    .line 43
    return-void
.end method

.method public setUseMock()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/webkitsec/MockGeolocation;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-static {v0}, Landroid/webkitsec/MockGeolocation;->nativeSetUseMock(Landroid/webkitsec/WebViewCore;)V

    .line 35
    return-void
.end method
