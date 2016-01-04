.class public Landroid/webkitsec/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewDebug$HierarchyHandler;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebView$1;,
        Landroid/webkitsec/WebView$FindListenerDistributor;,
        Landroid/webkitsec/WebView$PrivateAccess;,
        Landroid/webkitsec/WebView$HitTestResult;,
        Landroid/webkitsec/WebView$ContentSizeListener;,
        Landroid/webkitsec/WebView$PictureListener;,
        Landroid/webkitsec/WebView$FindListener;,
        Landroid/webkitsec/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webview_proxy"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static mIsBrowserPolicyEnabled:Z

.field private static sEnforceThreadChecking:Ljava/lang/Boolean;


# instance fields
.field private mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

.field private mProvider:Landroid/webkitsec/WebViewProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/WebView;->sEnforceThreadChecking:Ljava/lang/Boolean;

    .line 2433
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkitsec/WebView;->mIsBrowserPolicyEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 461
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 470
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 471
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 482
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p5, "privateBrowsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p4, "javaScriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 524
    if-nez p1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/WebView;->sEnforceThreadChecking:Ljava/lang/Boolean;

    .line 531
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 533
    invoke-direct {p0}, Landroid/webkitsec/WebView;->ensureProviderCreated()V

    .line 534
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p4, p5}, Landroid/webkitsec/WebViewProvider;->init(Ljava/util/Map;Z)V

    .line 535
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p2, p3}, Landroid/webkitsec/WebViewProvider;->updateSelectPopupRsrc(Landroid/util/AttributeSet;I)V

    .line 536
    return-void

    .line 528
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 500
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 501
    return-void
.end method

.method static synthetic access$1001(Landroid/webkitsec/WebView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$101(Landroid/webkitsec/WebView;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;

    .prologue
    .line 269
    invoke-super {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$1101(Landroid/webkitsec/WebView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkitsec/WebView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 269
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkitsec/WebView;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Landroid/view/View;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkitsec/WebView;IZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkitsec/WebView;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/webkitsec/WebView;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/webkitsec/WebView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkitsec/WebView;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Landroid/webkitsec/WebView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I

    .prologue
    .line 269
    iput p1, p0, Landroid/view/View;->mScrollX:I

    return p1
.end method

.method static synthetic access$2002(Landroid/webkitsec/WebView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I

    .prologue
    .line 269
    iput p1, p0, Landroid/view/View;->mScrollY:I

    return p1
.end method

.method static synthetic access$201(Landroid/webkitsec/WebView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$301(Landroid/webkitsec/WebView;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebView;

    .prologue
    .line 269
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method static synthetic access$401(Landroid/webkitsec/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Landroid/webkitsec/WebView;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Landroid/webkitsec/WebView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;

    .prologue
    .line 269
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Landroid/webkitsec/WebView;IIII)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$801(Landroid/webkitsec/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Landroid/webkitsec/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private static checkThread()V
    .locals 3

    .prologue
    .line 2083
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 2084
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All WebView methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Future versions of WebView may not support use on other threads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2089
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "webview_proxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    .line 2092
    sget-object v1, Landroid/webkitsec/WebView;->sEnforceThreadChecking:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2093
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2097
    :cond_0
    return-void
.end method

.method public static clearClientCertCacList()V
    .locals 1

    .prologue
    .line 2412
    invoke-static {}, Landroid/webkitsec/SslClientCertLookupTable;->getInstance()Landroid/webkitsec/SslClientCertLookupTable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/SslClientCertLookupTable;->clearCacList()V

    .line 2413
    return-void
.end method

.method public static clearClientCertDeniedList()V
    .locals 1

    .prologue
    .line 2409
    invoke-static {}, Landroid/webkitsec/SslClientCertLookupTable;->getInstance()Landroid/webkitsec/SslClientCertLookupTable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/SslClientCertLookupTable;->clearDeniedList()V

    .line 2410
    return-void
.end method

.method public static deregisterCACEngine()V
    .locals 2

    .prologue
    .line 2400
    const-string/jumbo v0, "webview_proxy"

    const-string v1, "[cac_debug_log] deregisterCACEngine "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    invoke-static {}, Landroid/webkitsec/JniUtil;->deregisterCACEngine()V

    .line 2403
    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 732
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 733
    invoke-static {}, Landroid/webkitsec/WebView;->getFactory()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    .line 734
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 719
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 720
    invoke-static {}, Landroid/webkitsec/WebView;->getFactory()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    .line 721
    return-void
.end method

.method private ensureProviderCreated()V
    .locals 2

    .prologue
    .line 2067
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 2068
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    if-nez v0, :cond_0

    .line 2071
    invoke-static {}, Landroid/webkitsec/WebView;->getFactory()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    new-instance v1, Landroid/webkitsec/WebView$PrivateAccess;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebView$PrivateAccess;-><init>(Landroid/webkitsec/WebView;)V

    invoke-interface {v0, p0, v1}, Landroid/webkitsec/WebViewFactoryProvider;->createWebView(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)Landroid/webkitsec/WebViewProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    .line 2073
    :cond_0
    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    .line 1483
    invoke-static {}, Landroid/webkitsec/WebView;->getFactory()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkitsec/WebViewFactoryProvider$Statics;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCACEngineState()I
    .locals 2

    .prologue
    .line 2405
    const-string/jumbo v0, "webview_proxy"

    const-string v1, "[cac_debug_log] getCACEngineState "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    invoke-static {}, Landroid/webkitsec/JniUtil;->getCACEngineState()I

    move-result v0

    return v0
.end method

.method private static declared-synchronized getFactory()Landroid/webkitsec/WebViewFactoryProvider;
    .locals 2

    .prologue
    .line 2079
    const-class v0, Landroid/webkitsec/WebView;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkitsec/WebViewFactory;->getProvider()Landroid/webkitsec/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPluginList()Landroid/webkitsec/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1642
    const-class v1, Landroid/webkitsec/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1643
    new-instance v0, Landroid/webkitsec/PluginList;

    invoke-direct {v0}, Landroid/webkitsec/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1642
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static registerCACEngine()Z
    .locals 3

    .prologue
    .line 2390
    const-string/jumbo v1, "webview_proxy"

    const-string v2, "[cac_debug_log] registerCACEngine "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const/4 v0, 0x0

    .line 2394
    .local v0, "success":Z
    sget-boolean v1, Landroid/webkitsec/WebView;->mIsBrowserPolicyEnabled:Z

    if-eqz v1, :cond_0

    .line 2395
    invoke-static {}, Landroid/webkitsec/JniUtil;->registerCACEngine()Z

    move-result v0

    .line 2397
    :cond_0
    return v0
.end method

.method public static setBrowserPolicy(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 2417
    const-string/jumbo v1, "webview_proxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[cac_debug_log] setBrowserPolicy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    sput-boolean p0, Landroid/webkitsec/WebView;->mIsBrowserPolicyEnabled:Z

    .line 2419
    invoke-static {}, Landroid/webkitsec/WebView;->getCACEngineState()I

    move-result v0

    .line 2420
    .local v0, "lCacEngLoaded":I
    if-eqz p0, :cond_1

    .line 2421
    if-nez v0, :cond_0

    .line 2422
    const-string/jumbo v1, "webview_proxy"

    const-string v2, "[cac_debug_log] Force engine load"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    invoke-static {}, Landroid/webkitsec/WebView;->registerCACEngine()Z

    .line 2431
    :cond_0
    :goto_0
    return-void

    .line 2427
    :cond_1
    const-string/jumbo v1, "webview_proxy"

    const-string v2, "[cac_debug_log] Force engine un-load"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    if-eqz v0, :cond_0

    .line 2429
    invoke-static {}, Landroid/webkitsec/WebView;->deregisterCACEngine()V

    goto :goto_0
.end method

.method public static setOpenSslContext(Z)Z
    .locals 3
    .param p0, "cac"    # Z

    .prologue
    .line 2386
    const-string/jumbo v0, "webview_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cac_debug_log] setOpenSslContext cac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    invoke-static {p0}, Landroid/webkitsec/JniUtil;->setOpenSslContext(Z)Z

    move-result v0

    return v0
.end method

.method private setupFindListenerIfNeeded()V
    .locals 2

    .prologue
    .line 2059
    iget-object v0, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    if-nez v0, :cond_0

    .line 2060
    new-instance v0, Landroid/webkitsec/WebView$FindListenerDistributor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/WebView$FindListenerDistributor;-><init>(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$1;)V

    iput-object v0, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    .line 2061
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    iget-object v1, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewProvider;->setFindListener(Landroid/webkitsec/WebView$FindListener;)V

    .line 2063
    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1605
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1606
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1607
    return-void
.end method

.method public applyreadability(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1803
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1804
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->applyreadability(Ljava/lang/String;)V

    .line 1805
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 965
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 966
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 1003
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1004
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 983
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 984
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1740
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1741
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1754
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1755
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 1077
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1078
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearActionModes()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearActionModes()V

    .line 680
    return-void
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 1334
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1335
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->clearCache(Z)V

    .line 1336
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 1345
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1346
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearFormData()V

    .line 1347
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 1353
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1354
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearHistory()V

    .line 1355
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 1491
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1492
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearMatches()V

    .line 1493
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearSelection()V

    .line 1840
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 1362
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1363
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearSslPreferences()V

    .line 1364
    return-void
.end method

.method public clearView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1058
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1059
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->clearView()V

    .line 1060
    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 2146
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 2166
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeScroll()V

    .line 2167
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 2161
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 2151
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScrollDelegate()Landroid/webkitsec/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ScrollDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public copyBackForwardList()Landroid/webkitsec/WebBackForwardList;
    .locals 1

    .prologue
    .line 1375
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1376
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->copyBackForwardList()Landroid/webkitsec/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelectionSec()Z
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->copySelectionSec()Z

    move-result v0

    return v0
.end method

.method public debugDump()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1872
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1874
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 706
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 707
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->destroy()V

    .line 708
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2379
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->preDispatchDraw(Landroid/graphics/Canvas;)V

    .line 2380
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2381
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2328
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1503
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1504
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    .line 1505
    return-void
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 1881
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    .line 1882
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1664
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1666
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1816
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 2
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    .line 2372
    invoke-super {p0, p1, p2}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v0

    .line 2373
    .local v0, "extractionResult":I
    iget-object v1, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v1, p1, p2}, Landroid/webkitsec/WebViewProvider;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    move-result v1

    return v1
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .param p1, "find"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1421
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1422
    const-string v0, "findAll blocks UI: prefer findAllAsync"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1423
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->findAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "find"    # Ljava/lang/String;

    .prologue
    .line 1435
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1436
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 1890
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNext(Z)V
    .locals 1
    .param p1, "forward"    # Z

    .prologue
    .line 1406
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1407
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->findNext(Z)V

    .line 1408
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .prologue
    .line 1707
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1708
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->flingScroll(II)V

    .line 1709
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 1323
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1324
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->freeMemory()V

    .line 1325
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 596
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 597
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1254
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1255
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1266
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1222
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1223
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 1141
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1142
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getHitTestResult()Landroid/webkitsec/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 669
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 670
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1199
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1200
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1243
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1244
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getProgress()I

    move-result v0

    return v0
.end method

.method public getReaderArticle()Z
    .locals 1

    .prologue
    .line 1798
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1799
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getReaderArticle()Z

    move-result v0

    return v0
.end method

.method public getReaderFlag()Z
    .locals 1

    .prologue
    .line 1787
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1788
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getReaderFlag()Z

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1093
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1094
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Landroid/webkitsec/WebSettings;
    .locals 1

    .prologue
    .line 1629
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1630
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1211
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1212
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    .line 1184
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1185
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 585
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 586
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebClipboard()Landroid/webkitsec/WebClipboard;
    .locals 1

    .prologue
    .line 1820
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;
    .locals 1

    .prologue
    .line 2365
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewProvider()Landroid/webkitsec/WebViewProvider;
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1725
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1726
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 973
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 974
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->goBack()V

    .line 975
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 1016
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1017
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->goBackOrForward(I)V

    .line 1018
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 991
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 992
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->goForward()V

    .line 993
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1118
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1119
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->invokeZoomPicker()V

    .line 1120
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1024
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1025
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 884
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 912
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 913
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/webkitsec/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 836
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 837
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 826
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 827
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 828
    return-void
.end method

.method public loadinitialJs(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1808
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1809
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->loadinitialJs(Ljava/lang/String;)V

    .line 1810
    return-void
.end method

.method notifyFindDialogDismissed()V
    .locals 1

    .prologue
    .line 2023
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 2024
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->notifyFindDialogDismissed()V

    .line 2025
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 2108
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2109
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    .line 2110
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1675
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "p"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1684
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2277
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2278
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2282
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    .line 2115
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2116
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2267
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 2268
    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 2251
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 2252
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2304
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2305
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2306
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2181
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1694
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2171
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2237
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2238
    const-class v0, Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 2239
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2240
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2230
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2231
    const-class v0, Landroid/webkitsec/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2232
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2233
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2191
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2201
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2196
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2339
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 2340
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onMeasure(II)V

    .line 2341
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 2256
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    .line 2257
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1296
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1297
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->onPause()V

    .line 1298
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1305
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->onResume()V

    .line 1306
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 2322
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 2323
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    .line 2324
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 2316
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2317
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    .line 2318
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2176
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2186
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2287
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2291
    invoke-direct {p0}, Landroid/webkitsec/WebView;->ensureProviderCreated()V

    .line 2293
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2294
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2298
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    .line 2299
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2300
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 2261
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2262
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    .line 2263
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 564
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 565
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 574
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 575
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .prologue
    .line 1046
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1047
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1035
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1036
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 1275
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1276
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->pauseTimers()V

    .line 1277
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 2244
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 849
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 850
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    .line 851
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .param p1, "reloadOpenPages"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1652
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1653
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 955
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 956
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->reload()V

    .line 957
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1617
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1618
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1619
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2345
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2333
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1
    .param p1, "hrefMsg"    # Landroid/os/Message;

    .prologue
    .line 1159
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1160
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1161
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1171
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1172
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    .line 1173
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "src"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 793
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 794
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 810
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 811
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->restoreState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 1284
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1285
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->resumeTimers()V

    .line 1286
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "strUrl"    # Ljava/lang/String;
    .param p2, "strPath"    # Ljava/lang/String;

    .prologue
    .line 1862
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 631
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 632
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "dest"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 776
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 777
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 760
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 761
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->saveState(Landroid/os/Bundle;)Landroid/webkitsec/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 922
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 923
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V
    .locals 1
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 939
    .local p3, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 940
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLandroid/webkitsec/ValueCallback;)V

    .line 941
    return-void
.end method

.method public scrollSelectPopup()V
    .locals 1

    .prologue
    .line 684
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 685
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->scrollSelectPopup()V

    .line 686
    return-void
.end method

.method public selectLastTouchText()Z
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->selectLastTouchText()Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 2350
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    .line 2351
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 607
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 608
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 609
    return-void
.end method

.method public setContentSizeListener(Landroid/webkitsec/WebView$ContentSizeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkitsec/WebView$ContentSizeListener;

    .prologue
    .line 1556
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1557
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setContentSizeListener(Landroid/webkitsec/WebView$ContentSizeListener;)V

    .line 1558
    return-void
.end method

.method public setDownloadListener(Landroid/webkitsec/DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkitsec/DownloadListener;

    .prologue
    .line 1526
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1527
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setDownloadListener(Landroid/webkitsec/DownloadListener;)V

    .line 1528
    return-void
.end method

.method setFindDialogFindListener(Landroid/webkitsec/WebView$FindListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkitsec/WebView$FindListener;

    .prologue
    .line 2016
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 2017
    invoke-direct {p0}, Landroid/webkitsec/WebView;->setupFindListenerIfNeeded()V

    .line 2018
    iget-object v0, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    # setter for: Landroid/webkitsec/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkitsec/WebView$FindListener;
    invoke-static {v0, p1}, Landroid/webkitsec/WebView$FindListenerDistributor;->access$2102(Landroid/webkitsec/WebView$FindListenerDistributor;Landroid/webkitsec/WebView$FindListener;)Landroid/webkitsec/WebView$FindListener;

    .line 2019
    return-void
.end method

.method public setFindListener(Landroid/webkitsec/WebView$FindListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkitsec/WebView$FindListener;

    .prologue
    .line 1387
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1390
    invoke-direct {p0}, Landroid/webkitsec/WebView;->setupFindListenerIfNeeded()V

    .line 1391
    iget-object v0, p0, Landroid/webkitsec/WebView;->mFindListener:Landroid/webkitsec/WebView$FindListenerDistributor;

    # setter for: Landroid/webkitsec/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkitsec/WebView$FindListener;
    invoke-static {v0, p1}, Landroid/webkitsec/WebView$FindListenerDistributor;->access$002(Landroid/webkitsec/WebView$FindListenerDistributor;Landroid/webkitsec/WebView$FindListener;)Landroid/webkitsec/WebView$FindListener;

    .line 1393
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2311
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .prologue
    .line 544
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 545
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setHorizontalScrollbarOverlay(Z)V

    .line 546
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 651
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 1108
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1109
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setInitialScale(I)V

    .line 1110
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 2355
    invoke-super {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2356
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2357
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2120
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2121
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1
    .param p1, "setMap"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1701
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1702
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    .line 1703
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z

    .prologue
    .line 744
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 745
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setNetworkAvailable(Z)V

    .line 746
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2125
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2129
    invoke-direct {p0}, Landroid/webkitsec/WebView;->ensureProviderCreated()V

    .line 2130
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    .line 2131
    return-void
.end method

.method public setPageZoomOnIMELaunch(Z)V
    .locals 1
    .param p1, "pageZoomOnIME"    # Z

    .prologue
    .line 696
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 697
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setPageZoomOnIMELaunch(Z)V

    .line 698
    return-void
.end method

.method public setPictureListener(Landroid/webkitsec/WebView$PictureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkitsec/WebView$PictureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1551
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1552
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setPictureListener(Landroid/webkitsec/WebView$PictureListener;)V

    .line 1553
    return-void
.end method

.method public setReaderArticle(Z)V
    .locals 1
    .param p1, "isReaderArticle"    # Z

    .prologue
    .line 1793
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1794
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setReaderArticle(Z)V

    .line 1795
    return-void
.end method

.method public setReaderFlag(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1781
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1782
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setReaderFlag(Z)V

    .line 1783
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 2135
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    .line 2136
    invoke-super {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 2137
    return-void
.end method

.method public setSelectionCallback(Landroid/webkitsec/SelectActionModeCallbackSec;)V
    .locals 1
    .param p1, "callback"    # Landroid/webkitsec/SelectActionModeCallbackSec;

    .prologue
    .line 1831
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setSelectionCallback(Landroid/webkitsec/SelectActionModeCallbackSec;)V

    .line 1832
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .prologue
    .line 554
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 555
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setVerticalScrollbarOverlay(Z)V

    .line 556
    return-void
.end method

.method public setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkitsec/WebChromeClient;

    .prologue
    .line 1538
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1539
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setWebChromeClient(Landroid/webkitsec/WebChromeClient;)V

    .line 1540
    return-void
.end method

.method public setWebViewClient(Landroid/webkitsec/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkitsec/WebViewClient;

    .prologue
    .line 1514
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1515
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewProvider;->setWebViewClient(Landroid/webkitsec/WebViewClient;)V

    .line 1516
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2225
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->getViewDelegate()Landroid/webkitsec/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "showIme"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1455
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1456
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkitsec/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 947
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 948
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->stopLoading()V

    .line 949
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 1764
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1765
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 1774
    invoke-static {}, Landroid/webkitsec/WebView;->checkThread()V

    .line 1775
    iget-object v0, p0, Landroid/webkitsec/WebView;->mProvider:Landroid/webkitsec/WebViewProvider;

    invoke-interface {v0}, Landroid/webkitsec/WebViewProvider;->zoomOut()Z

    move-result v0

    return v0
.end method
