.class Landroid/webkitsec/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/BrowserFrame$ConfigCallback;,
        Landroid/webkitsec/BrowserFrame$JSObject;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DRAWABLEDIR:I = 0x3

.field private static final FILE_UPLOAD_LABEL:I = 0x4

.field private static final FILE_UPLOAD_NO_FILE_CHOSEN:I = 0x7

.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final NODOMAIN:I = 0x1

.field static final ORIENTATION_CHANGED:I = 0x3ea

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field private static final RESET_LABEL:I = 0x5

.field private static final SCHEME_HOST_DELIMITER:Ljava/lang/String; = "://"

.field private static final SUBMIT_LABEL:I = 0x6

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field static sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

.field static sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;


# instance fields
.field private mBlockMessages:Z

.field private final mCallbackProxy:Landroid/webkitsec/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

.field private mDevActionError:Z

.field private mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFirstLayoutDone:Z

.field private mIsMainFrame:Z

.field private mJavaScriptObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkitsec/BrowserFrame$JSObject;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private mOrientation:I

.field private mRemovedJavaScriptObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/webkitsec/WebSettingsClassic;

.field private final mWebViewCore:Landroid/webkitsec/WebViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkitsec/BrowserFrame;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewCore;Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/WebSettingsClassic;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # Landroid/webkitsec/WebViewCore;
    .param p3, "proxy"    # Landroid/webkitsec/CallbackProxy;
    .param p4, "settings"    # Landroid/webkitsec/WebSettingsClassic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkitsec/WebViewCore;",
            "Landroid/webkitsec/CallbackProxy;",
            "Landroid/webkitsec/WebSettingsClassic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "javascriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 248
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 97
    iput-boolean v2, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    .line 98
    iput-boolean v2, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    .line 102
    iput-boolean v3, p0, Landroid/webkitsec/BrowserFrame;->mBlockMessages:Z

    .line 103
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkitsec/BrowserFrame;->mOrientation:I

    .line 121
    iput-boolean v3, p0, Landroid/webkitsec/BrowserFrame;->mDevActionError:Z

    .line 128
    iput-object v4, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    .line 130
    iput-object v4, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 254
    .local v1, "appContext":Landroid/content/Context;
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_0

    .line 255
    new-instance v2, Landroid/webkitsec/JWebCoreJavaBridge;

    invoke-direct {v2}, Landroid/webkitsec/JWebCoreJavaBridge;-><init>()V

    sput-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    .line 257
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 259
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    .line 260
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/webkitsec/JWebCoreJavaBridge;->setCacheSize(I)V

    .line 265
    :goto_0
    invoke-static {v1}, Landroid/webkitsec/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkitsec/CookieSyncManager;

    .line 267
    invoke-static {v1}, Landroid/webkitsec/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkitsec/PluginManager;

    .line 270
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

    if-nez v2, :cond_1

    .line 271
    new-instance v3, Landroid/webkitsec/BrowserFrame$ConfigCallback;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {v3, v2}, Landroid/webkitsec/BrowserFrame$ConfigCallback;-><init>(Landroid/view/WindowManager;)V

    sput-object v3, Landroid/webkitsec/BrowserFrame;->sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

    .line 274
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 276
    :cond_1
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sConfigCallback:Landroid/webkitsec/BrowserFrame$ConfigCallback;

    invoke-virtual {v2, p0}, Landroid/webkitsec/BrowserFrame$ConfigCallback;->addHandler(Landroid/os/Handler;)V

    .line 278
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    .line 279
    invoke-direct {p0, p5}, Landroid/webkitsec/BrowserFrame;->addJavaScriptObjects(Ljava/util/Map;)V

    .line 280
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/webkitsec/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    .line 282
    iput-object p4, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    .line 283
    iput-object p1, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    .line 284
    iput-object p3, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    .line 285
    invoke-static {v1}, Landroid/webkitsec/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/BrowserFrame;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    .line 286
    iput-object p2, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 291
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {p3}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroid/webkitsec/BrowserFrame;->nativeCreateFrame(Landroid/webkitsec/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkitsec/WebBackForwardList;)V

    .line 294
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrowserFrame constructor: this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .line 301
    return-void

    .line 262
    .local v0, "am":Landroid/app/ActivityManager;
    :cond_2
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3}, Landroid/webkitsec/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_0
.end method

.method private UpdateUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onUpdateUrl(Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/BrowserFrame;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/BrowserFrame;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/BrowserFrame;->nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/BrowserFrame;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/BrowserFrame;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeAuthenticationCancel(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkitsec/BrowserFrame;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/BrowserFrame;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeSslCertErrorProceed(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/BrowserFrame;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/BrowserFrame;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativeSslCertErrorCancel(II)V

    return-void
.end method

.method private addJavaScriptObjects(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "javascriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 719
    :cond_0
    return-void

    .line 711
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 712
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 714
    .local v0, "interfaceName":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 715
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 716
    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v4, Landroid/webkitsec/BrowserFrame$JSObject;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Landroid/webkitsec/BrowserFrame$JSObject;-><init>(Landroid/webkitsec/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private autoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 1455
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/CallbackProxy;->onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    return-void
.end method

.method private native childFramesAsText()Ljava/lang/String;
.end method

.method private closeWindow(Landroid/webkitsec/WebViewCore;)V
    .locals 2
    .param p1, "w"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 1112
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkitsec/WebViewCore;->getWebViewClassic()Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/CallbackProxy;->onCloseWindow(Landroid/webkitsec/WebViewClassic;)V

    .line 1113
    return-void
.end method

.method private createWindow(ZZ)Landroid/webkitsec/BrowserFrame;
    .locals 3
    .param p1, "dialog"    # Z
    .param p2, "userGesture"    # Z

    .prologue
    .line 1030
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    const v1, 0x1040b69

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1034
    const/4 v0, 0x0

    .line 1037
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->createWindow(ZZ)Landroid/webkitsec/BrowserFrame;

    move-result-object v0

    goto :goto_0
.end method

.method private decidePolicyForFormResubmission(I)V
    .locals 4
    .param p1, "policyFunction"    # I

    .prologue
    const/16 v3, 0x3eb

    .line 1120
    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1122
    .local v0, "dontResend":Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1124
    .local v1, "resend":Landroid/os/Message;
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkitsec/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    .line 1125
    return-void
.end method

.method private density()F
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkitsec/WebViewCore;->getFixedDisplayDensity(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method private didFinishLoading()V
    .locals 9

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    if-eqz v0, :cond_1

    .line 1413
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    iget-object v8, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/webkitsec/KeyStoreHandler;->installCert(Landroid/content/Context;)V

    .line 1414
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    invoke-virtual {v0}, Landroid/webkitsec/DownloadFileHandler;->handleFile()Z

    .line 1419
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v1, v0, Landroid/webkitsec/DownloadFileHandler;->mUrl:Ljava/lang/String;

    .line 1420
    .local v1, "url":Ljava/lang/String;
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v2, v0, Landroid/webkitsec/DownloadFileHandler;->mUserAgent:Ljava/lang/String;

    .line 1421
    .local v2, "userAgent":Ljava/lang/String;
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v3, v0, Landroid/webkitsec/DownloadFileHandler;->mContentDisposition:Ljava/lang/String;

    .line 1422
    .local v3, "contentDisposition":Ljava/lang/String;
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v4, v0, Landroid/webkitsec/DownloadFileHandler;->mMimeType:Ljava/lang/String;

    .line 1423
    .local v4, "mimeType":Ljava/lang/String;
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-object v5, v0, Landroid/webkitsec/DownloadFileHandler;->mReferer:Ljava/lang/String;

    .line 1424
    .local v5, "referer":Ljava/lang/String;
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    iget-wide v6, v0, Landroid/webkitsec/DownloadFileHandler;->mContentLength:J

    .line 1426
    .local v6, "contentLength":J
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual/range {v0 .. v7}, Landroid/webkitsec/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private didReceiveAuthenticationChallenge(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "useCachedCredentials"    # Z
    .param p5, "suppressDialog"    # Z

    .prologue
    .line 1239
    new-instance v0, Landroid/webkitsec/BrowserFrame$1;

    invoke-direct {v0, p0, p4, p1, p5}, Landroid/webkitsec/BrowserFrame$1;-><init>(Landroid/webkitsec/BrowserFrame;ZIZ)V

    .line 1261
    .local v0, "handler":Landroid/webkitsec/HttpAuthHandler;
    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1, v0, p2, p3}, Landroid/webkitsec/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkitsec/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method private didReceiveData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 1405
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/KeyStoreHandler;->didReceiveData([BI)V

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/DownloadFileHandler;->didReceiveData([BI)V

    goto :goto_0
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1016
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    .line 1017
    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "precomposed"    # Z

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    .line 1022
    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private downloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "referer"    # Ljava/lang/String;
    .param p6, "contentLength"    # J

    .prologue
    .line 1373
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1376
    .local v8, "extension":Ljava/lang/String;
    invoke-static {v8}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1378
    if-nez p4, :cond_0

    .line 1379
    const-string p4, ""
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    .end local v8    # "extension":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkitsec/MimeTypeMap;->getSingleton()Landroid/webkitsec/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p3}, Landroid/webkitsec/MimeTypeMap;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1387
    invoke-static {p4}, Landroid/webkitsec/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1388
    new-instance v0, Landroid/webkitsec/KeyStoreHandler;

    invoke-direct {v0, p4}, Landroid/webkitsec/KeyStoreHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/webkitsec/BrowserFrame;->mKeyStoreHandler:Landroid/webkitsec/KeyStoreHandler;

    .line 1399
    :goto_1
    return-void

    .line 1391
    :cond_1
    invoke-static {p4}, Landroid/webkitsec/DownloadFileHandler;->isDownLoadableContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1392
    const-string/jumbo v0, "webkit"

    const-string v1, "isDownLoadableContent is true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    new-instance v0, Landroid/webkitsec/DownloadFileHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/webkitsec/DownloadFileHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Landroid/webkitsec/BrowserFrame;->mDownloadFileHandler:Landroid/webkitsec/DownloadFileHandler;

    goto :goto_1

    .line 1396
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkitsec/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_1

    .line 1380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "expectedSize"    # I

    .prologue
    .line 791
    const/4 v2, 0x0

    .line 793
    .local v2, "size":I
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 795
    .local v3, "stream":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 796
    if-gt v2, p4, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    sub-int/2addr v4, p3

    if-lt v4, v2, :cond_0

    .line 798
    invoke-virtual {v3, p2, p3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 802
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 810
    .end local v3    # "stream":Ljava/io/InputStream;
    :goto_1
    return v2

    .line 800
    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 803
    .end local v3    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v2, 0x0

    .line 809
    goto :goto_1

    .line 806
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 807
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 770
    const/4 v0, 0x0

    .line 772
    .local v0, "size":I
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 774
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 775
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_0
    return v0

    .line 776
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getRawResFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/webkitsec/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1162
    packed-switch p0, :pswitch_data_0

    .line 1201
    const-string/jumbo v6, "webkit"

    const-string v7, "getRawResFilename got incompatible resource ID"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v6, ""

    .line 1215
    :goto_0
    return-object v6

    .line 1164
    :pswitch_0
    const v2, 0x1100004

    .line 1165
    .local v2, "resid":I
    const-string v6, "SKO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Web_CustomizeErrorPage"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "KTO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Web_CustomizeErrorPage"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "LUO"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Web_CustomizeErrorPage"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1168
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1169
    .local v4, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1170
    .local v3, "strLanguage":Ljava/lang/String;
    const-string v6, "ko"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1171
    const v2, 0x1100005

    .line 1204
    .end local v3    # "strLanguage":Ljava/lang/String;
    .end local v4    # "systemLocale":Ljava/util/Locale;
    :cond_1
    :goto_1
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 1205
    .local v5, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v5, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1206
    const/4 v6, 0x3

    if-ne p0, v6, :cond_3

    .line 1207
    iget-object v6, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1208
    .local v1, "path":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1209
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 1210
    const-string/jumbo v6, "webkit"

    const-string v7, "Can\'t find drawable directory."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const-string v6, ""

    goto :goto_0

    .line 1176
    .end local v0    # "index":I
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "resid":I
    .end local v5    # "value":Landroid/util/TypedValue;
    :pswitch_1
    const v2, 0x1100003

    .line 1177
    .restart local v2    # "resid":I
    goto :goto_1

    .line 1181
    .end local v2    # "resid":I
    :pswitch_2
    const v2, 0x1080171

    .line 1182
    .restart local v2    # "resid":I
    goto :goto_1

    .line 1185
    .end local v2    # "resid":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10407cf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1189
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10407d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1193
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10407d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1197
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10407d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1213
    .restart local v0    # "index":I
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "resid":I
    .restart local v5    # "value":Landroid/util/TypedValue;
    :cond_2
    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1215
    .end local v0    # "index":I
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    iget-object v6, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 24
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 823
    const-string v3, "file:///android_asset/"

    .line 824
    .local v3, "ANDROID_ASSET":Ljava/lang/String;
    const-string v5, "file:///android_res/"

    .line 825
    .local v5, "ANDROID_RESOURCE":Ljava/lang/String;
    const-string v4, "content:"

    .line 827
    .local v4, "ANDROID_CONTENT":Ljava/lang/String;
    const-string v20, "file:///android_res/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 828
    const-string v20, "file:///android_res/"

    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 829
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    .line 830
    :cond_0
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "url has length 0 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/16 v20, 0x0

    .line 895
    :goto_0
    return-object v20

    .line 833
    :cond_1
    const/16 v20, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 834
    .local v16, "slash":I
    const/16 v20, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 835
    .local v9, "dot":I
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_3

    .line 836
    :cond_2
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Incorrect res path: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/16 v20, 0x0

    goto :goto_0

    .line 839
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 840
    .local v17, "subClassName":Ljava/lang/String;
    add-int/lit8 v20, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 841
    .local v13, "fieldName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 843
    .local v11, "errorMsg":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".R$"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 847
    .local v8, "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 848
    .local v12, "field":Ljava/lang/reflect/Field;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    .line 849
    .local v14, "id":I
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .line 850
    .local v19, "value":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 851
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v20

    goto/16 :goto_0

    .line 857
    :cond_4
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "not of type string: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 860
    .end local v8    # "d":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "field":Ljava/lang/reflect/Field;
    .end local v14    # "id":I
    .end local v19    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v10

    .line 861
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 864
    .end local v9    # "dot":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "errorMsg":Ljava/lang/String;
    .end local v13    # "fieldName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "subClassName":Ljava/lang/String;
    :cond_5
    const-string v20, "file:///android_asset/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 865
    const-string v20, "file:///android_asset/"

    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 867
    .local v6, "assetUrl":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 868
    .local v7, "assets":Landroid/content/res/AssetManager;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 869
    .local v18, "uri":Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v20

    goto/16 :goto_0

    .line 870
    .end local v7    # "assets":Landroid/content/res/AssetManager;
    .end local v18    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v10

    .line 871
    .local v10, "e":Ljava/io/IOException;
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 872
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .line 873
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Problem loading url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 876
    .end local v6    # "assetUrl":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkitsec/WebSettingsClassic;->getAllowContentAccess()Z

    move-result v20

    if-eqz v20, :cond_9

    const-string v20, "content:"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 882
    const/16 v20, 0x3f

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 883
    .local v15, "mimeIndex":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_7

    .line 884
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 886
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkitsec/WebSettingsClassic;->isEmailPreviewMode()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 887
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 888
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 889
    .restart local v18    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v20

    goto/16 :goto_0

    .line 890
    .end local v15    # "mimeIndex":I
    .end local v18    # "uri":Landroid/net/Uri;
    :catch_3
    move-exception v10

    .line 891
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 895
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method private isBingSearch()I
    .locals 2

    .prologue
    .line 1073
    const-string/jumbo v0, "webkit"

    const-string v1, "Entered isBingSearch function of BrowserFrame.java"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-string/jumbo v0, "webkit"

    const-string v1, "Now calling isSearchOptionAvailable of CallbackProxy.java with SearchName = bing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    const-string v1, "bing"

    invoke-virtual {v0, v1}, Landroid/webkitsec/CallbackProxy;->isSearchOptionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    const-string/jumbo v0, "webkit"

    const-string v1, "Since searchEngine options does not contain bing, returning 2 as value"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    const/4 v0, 0x2

    .line 1096
    :goto_0
    return v0

    .line 1084
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getSearchEngineName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    const-string/jumbo v0, "webkit"

    const-string v1, "Since searchEngineName contains bing, returning 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v0, 0x1

    goto :goto_0

    .line 1094
    :cond_1
    const-string/jumbo v0, "webkit"

    const-string v1, "Since searchEngineName does not contain bing, returning false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "loadType"    # I
    .param p3, "isMainFrame"    # Z

    .prologue
    .line 549
    if-nez p3, :cond_0

    if-nez p2, :cond_2

    .line 550
    :cond_0
    if-eqz p3, :cond_2

    .line 552
    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mDevActionError:Z

    if-nez v0, :cond_1

    .line 554
    const-string v0, "GATE"

    const-string v1, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->resetLoadingStates()V

    .line 558
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->switchOutDrawHistory()V

    .line 559
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mDevActionError:Z

    .line 563
    :cond_2
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "favicon"    # Landroid/graphics/Bitmap;
    .param p3, "loadType"    # I
    .param p4, "isMainFrame"    # Z

    .prologue
    const/4 v1, 0x0

    .line 484
    iput-boolean p4, p0, Landroid/webkitsec/BrowserFrame;->mIsMainFrame:Z

    .line 486
    if-nez p4, :cond_0

    if-nez p3, :cond_1

    .line 487
    :cond_0
    iput p3, p0, Landroid/webkitsec/BrowserFrame;->mLoadType:I

    .line 489
    if-eqz p4, :cond_1

    .line 491
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 494
    iput-boolean v1, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    .line 495
    iput-boolean v1, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    .line 498
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->clearContent()V

    .line 499
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->removeMessages(I)V

    .line 502
    :cond_1
    return-void
.end method

.method private maybeSavePassword([BLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "postData"    # [B
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 912
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 924
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v4

    invoke-static {v4}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 927
    new-instance v3, Landroid/net/WebAddress;

    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 931
    .local v3, "uri":Landroid/net/WebAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, "schemePlusHost":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 936
    .local v0, "postString":Ljava/lang/String;
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 938
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v4, v2}, Landroid/webkitsec/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, "saved":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 943
    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_0

    .line 947
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v4, v2, p2, p3}, Landroid/webkitsec/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 956
    .end local v0    # "postString":Ljava/lang/String;
    .end local v1    # "saved":[Ljava/lang/String;
    .end local v2    # "schemePlusHost":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/WebAddress;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 952
    .restart local v0    # "postString":Ljava/lang/String;
    .restart local v1    # "saved":[Ljava/lang/String;
    .restart local v2    # "schemePlusHost":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/WebAddress;
    :cond_2
    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p2, p3, v5}, Landroid/webkitsec/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V
.end method

.method private native nativeAuthenticationCancel(I)V
.end method

.method private native nativeAuthenticationProceed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkitsec/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkitsec/WebBackForwardList;)V
.end method

.method private native nativeGetShouldStartScrolledRight(I)Z
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeSetUAProfURL(Ljava/lang/String;)V
.end method

.method private native nativeSslCertErrorCancel(II)V
.end method

.method private native nativeSslCertErrorProceed(I)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mDevActionError:Z

    .line 420
    const-string v0, "GATE"

    const-string v1, "<GATE-M>DEV_ACTION_ERROR</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->resetLoadingStates()V

    .line 423
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 426
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportError errorCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") desc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void
.end method

.method private reportSslCertError(II[BLjava/lang/String;)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "certError"    # I
    .param p3, "certDER"    # [B
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 1275
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p3}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1276
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1277
    .local v3, "sslCert":Landroid/net/http/SslCertificate;
    invoke-static {p2, v3, p4}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1285
    .local v4, "sslError":Landroid/net/http/SslError;
    invoke-static {}, Landroid/webkitsec/SslCertLookupTable;->getInstance()Landroid/webkitsec/SslCertLookupTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkitsec/SslCertLookupTable;->isAllowed(Landroid/net/http/SslError;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1286
    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeSslCertErrorProceed(I)V

    .line 1287
    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v5, v4}, Landroid/webkitsec/CallbackProxy;->onProceededAfterSslError(Landroid/net/http/SslError;)V

    .line 1319
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "sslCert":Landroid/net/http/SslCertificate;
    .end local v4    # "sslError":Landroid/net/http/SslError;
    :goto_0
    return-void

    .line 1278
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "webkit"

    const-string v6, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativeSslCertErrorCancel(II)V

    goto :goto_0

    .line 1291
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v3    # "sslCert":Landroid/net/http/SslCertificate;
    .restart local v4    # "sslError":Landroid/net/http/SslError;
    :cond_0
    new-instance v2, Landroid/webkitsec/BrowserFrame$2;

    invoke-direct {v2, p0, v4, p1, p2}, Landroid/webkitsec/BrowserFrame$2;-><init>(Landroid/webkitsec/BrowserFrame;Landroid/net/http/SslError;II)V

    .line 1318
    .local v2, "handler":Landroid/webkitsec/SslErrorHandler;
    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v5, v2, v4}, Landroid/webkitsec/CallbackProxy;->onReceivedSslError(Landroid/webkitsec/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method private requestClientCert(ILjava/lang/String;)V
    .locals 7
    .param p1, "handle"    # I
    .param p2, "hostAndPort"    # Ljava/lang/String;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 1329
    invoke-static {}, Landroid/webkitsec/SslClientCertLookupTable;->getInstance()Landroid/webkitsec/SslClientCertLookupTable;

    move-result-object v1

    .line 1330
    .local v1, "table":Landroid/webkitsec/SslClientCertLookupTable;
    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->IsAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1332
    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->PrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 1339
    .local v0, "pkey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->CertificateChain(Ljava/lang/String;)[[B

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Landroid/webkitsec/BrowserFrame;->nativeSslClientCert(I[B[[B)V

    .line 1362
    .end local v0    # "pkey":Ljava/security/PrivateKey;
    :goto_0
    return-void

    .line 1343
    :cond_0
    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->IsDenied(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1345
    check-cast v2, [[B

    invoke-virtual {p0, p1, v5, v6, v2}, Landroid/webkitsec/BrowserFrame;->nativeSslClientCert(IJ[[B)V

    goto :goto_0

    .line 1348
    :cond_1
    invoke-virtual {v1, p2}, Landroid/webkitsec/SslClientCertLookupTable;->IsCac(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1349
    const-string/jumbo v3, "webkit"

    const-string/jumbo v4, "requestClientCert() - previously cac"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-static {}, Landroid/webkitsec/WebView;->getCACEngineState()I

    move-result v3

    if-nez v3, :cond_2

    .line 1352
    const-string/jumbo v3, "webkit"

    const-string/jumbo v4, "requestClientCert - engine is not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-static {}, Landroid/webkitsec/WebView;->registerCACEngine()Z

    .line 1355
    :cond_2
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/webkitsec/WebView;->setOpenSslContext(Z)Z

    .line 1356
    check-cast v2, [[B

    invoke-virtual {p0, p1, v5, v6, v2}, Landroid/webkitsec/BrowserFrame;->nativeSslClientCert(IJ[[B)V

    goto :goto_0

    .line 1359
    :cond_3
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v3, Landroid/webkitsec/ClientCertRequestHandler;

    invoke-direct {v3, p0, p1, p2, v1}, Landroid/webkitsec/ClientCertRequestHandler;-><init>(Landroid/webkitsec/BrowserFrame;ILjava/lang/String;Landroid/webkitsec/SslClientCertLookupTable;)V

    invoke-virtual {v2, v3, p2}, Landroid/webkitsec/CallbackProxy;->onReceivedClientCertRequest(Landroid/webkitsec/ClientCertRequestHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestFocus()V
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onRequestFocus()V

    .line 1106
    return-void
.end method

.method private resetLoadingStates()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 451
    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    .line 452
    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    .line 453
    return-void
.end method

.method private saveFormData(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    .line 509
    .local v0, "h":Landroid/webkitsec/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Landroid/webkitsec/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkitsec/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 512
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;

    invoke-virtual {v2, v1, p1}, Landroid/webkitsec/WebViewDatabaseClassic;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 516
    .end local v0    # "h":Landroid/webkitsec/WebHistoryItem;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setBingSearch()Z
    .locals 5

    .prologue
    .line 1043
    const-string/jumbo v1, "webkit"

    const-string v2, "Entered the setBingSearch function of BrowserFrame.java"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    const-string v2, "bing"

    invoke-virtual {v1, v2}, Landroid/webkitsec/CallbackProxy;->isSearchOptionAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getSearchEngineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1048
    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    const v3, 0x1040b68

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    const v4, 0x1040b67

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/CallbackProxy;->onAlertDialogWithCheckBox(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1051
    .local v0, "JsConfirmResult":Z
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The JsConfirmResult from the popup dialog gave value as"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    if-eqz v0, :cond_0

    .line 1056
    const-string/jumbo v1, "webkit"

    const-string v2, "Now calling setBingSearch of callBackProxy.java from BrowserFrame.java"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkitsec/CallbackProxy;->setBingSearch()V

    .line 1059
    const/4 v1, 0x1

    .line 1067
    .end local v0    # "JsConfirmResult":Z
    :goto_0
    return v1

    .line 1065
    :cond_0
    const-string/jumbo v1, "webkit"

    const-string v2, "Returning false from setBingSearch of BrowserFrame.java"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCertificate([B)V
    .locals 4
    .param p1, "cert_der"    # [B

    .prologue
    .line 1438
    :try_start_0
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 1439
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v2, v3}, Landroid/webkitsec/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :goto_0
    return-void

    .line 1440
    :catch_0
    move-exception v1

    .line 1442
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "webkit"

    const-string v3, "Can\'t get the certificate from WebKit, canceling"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProgress(I)V
    .locals 3
    .param p1, "newProgress"    # I

    .prologue
    .line 996
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onProgressChanged(I)V

    .line 997
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 999
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewCore;->getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/CallbackProxy;->setWebFeedLinks([Landroid/webkitsec/WebFeedLink;)V

    .line 1001
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1006
    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4b

    if-le p1, v0, :cond_1

    .line 1007
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->switchOutDrawHistory()V

    .line 1009
    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 635
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private shouldInterceptRequest(Ljava/lang/String;)Landroid/webkitsec/WebResourceResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 963
    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->inputStreamForAndroidResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 964
    .local v0, "androidResource":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 965
    new-instance v4, Landroid/webkitsec/WebResourceResponse;

    invoke-direct {v4, v7, v7, v0}, Landroid/webkitsec/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 986
    :cond_0
    :goto_0
    return-object v4

    .line 970
    :cond_1
    iget-object v6, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebSettingsClassic;->getAllowFileAccess()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "file://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 971
    new-instance v4, Landroid/webkitsec/WebResourceResponse;

    invoke-direct {v4, v7, v7, v7}, Landroid/webkitsec/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 974
    :cond_2
    iget-object v6, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v6, p1}, Landroid/webkitsec/CallbackProxy;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkitsec/WebResourceResponse;

    move-result-object v4

    .line 975
    .local v4, "response":Landroid/webkitsec/WebResourceResponse;
    if-nez v4, :cond_0

    const-string v6, "browser:incognito"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 977
    :try_start_0
    iget-object v6, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 978
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x1100002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 980
    .local v2, "ins":Ljava/io/InputStream;
    new-instance v5, Landroid/webkitsec/WebResourceResponse;

    const-string/jumbo v6, "text/html"

    const-string/jumbo v7, "utf8"

    invoke-direct {v5, v6, v7, v2}, Landroid/webkitsec/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "response":Landroid/webkitsec/WebResourceResponse;
    .local v5, "response":Landroid/webkitsec/WebResourceResponse;
    move-object v4, v5

    .line 984
    .end local v5    # "response":Landroid/webkitsec/WebResourceResponse;
    .restart local v4    # "response":Landroid/webkitsec/WebResourceResponse;
    goto :goto_0

    .line 981
    .end local v2    # "ins":Ljava/io/InputStream;
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 983
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v6, "webkit"

    const-string v7, "Failed opening raw.incognito_mode_start_page"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shouldSaveFormData()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    .line 523
    .local v0, "h":Landroid/webkitsec/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 525
    .end local v0    # "h":Landroid/webkitsec/WebHistoryItem;
    :cond_0
    return v1
.end method

.method private spellCheckFinished(I)V
    .locals 1
    .param p1, "misspelledWordCount"    # I

    .prologue
    .line 1460
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onSpellCheckFinish(I)V

    .line 1461
    return-void
.end method

.method private transitionToCommitted(IZ)V
    .locals 1
    .param p1, "loadType"    # I
    .param p2, "isMainFrame"    # Z

    .prologue
    .line 534
    if-eqz p2, :cond_0

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    .line 536
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->getWebViewClassic()Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v0}, Landroid/webkitsec/ViewManager;->postResetStateAll()V

    .line 538
    :cond_0
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isReload"    # Z

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 1132
    return-void
.end method

.method private urlBlocked(Ljava/lang/String;)Z
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 1609
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_1

    .line 1610
    const-string/jumbo v0, "webkit"

    const-string v1, "Firewall not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :goto_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_0

    .line 1616
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "euler: isUrlBlocked = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    invoke-virtual {v4, p1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/FirewallPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v12, :cond_6

    .line 1619
    invoke-virtual {p0}, Landroid/webkitsec/BrowserFrame;->didFirstLayout()V

    .line 1621
    const-string/jumbo v0, "webkit"

    const-string v1, "euler: stopLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-virtual {p0}, Landroid/webkitsec/BrowserFrame;->stopLoading()V

    .line 1625
    const-string/jumbo v0, "webkit"

    const-string v1, "euler: loadFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadType:I

    iget-boolean v1, p0, Landroid/webkitsec/BrowserFrame;->mIsMainFrame:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/webkitsec/BrowserFrame;->loadFinished(Ljava/lang/String;IZ)V

    .line 1628
    const-string v2, ""

    .line 1629
    .local v2, "data":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1631
    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1632
    .local v11, "res":Landroid/content/res/Resources;
    const v0, 0x1100003

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    .line 1633
    .local v9, "ins":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    .end local v6    # "br":Ljava/io/BufferedReader;
    .local v7, "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 1636
    const-string v0, "%s"

    invoke-virtual {v10, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1637
    const-string v0, "%e"

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    const v4, 0x10402a1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    goto :goto_1

    .line 1612
    .end local v2    # "data":Ljava/lang/String;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v9    # "ins":Ljava/io/InputStream;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_1
    const-string/jumbo v0, "webkit"

    const-string v1, "Firewall is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1645
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "ins":Ljava/io/InputStream;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_2
    if-eqz v7, :cond_3

    .line 1646
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    move-object v6, v7

    .line 1652
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v9    # "ins":Ljava/io/InputStream;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "res":Landroid/content/res/Resources;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :cond_4
    :goto_3
    const-string/jumbo v0, "webkit"

    const-string v1, "euler: loadData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p1

    .line 1653
    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 1657
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    :goto_4
    return v0

    .line 1640
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v8

    .line 1641
    .local v8, "e":Ljava/io/IOException;
    :goto_5
    :try_start_3
    const-string v2, "Failed loading web page!"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1645
    if-eqz v6, :cond_4

    .line 1646
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 1647
    :catch_1
    move-exception v8

    .line 1648
    const-string/jumbo v0, "webkit"

    const-string v1, "Resource Closing Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1644
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 1645
    :goto_6
    if-eqz v6, :cond_5

    .line 1646
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1644
    :cond_5
    :goto_7
    throw v0

    .line 1657
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 1647
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v8

    .line 1648
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v1, "webkit"

    const-string v3, "Resource Closing Error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1647
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "ins":Ljava/io/InputStream;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v8

    .line 1648
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v0, "webkit"

    const-string v1, "Resource Closing Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1644
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 1640
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v8

    move-object v6, v7

    .end local v7    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method private windowObjectCleared(I)V
    .locals 5
    .param p1, "nativeFramePointer"    # I

    .prologue
    .line 688
    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 689
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 691
    .local v0, "interfaceName":Ljava/lang/String;
    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkitsec/BrowserFrame$JSObject;

    .line 692
    .local v2, "jsobject":Landroid/webkitsec/BrowserFrame$JSObject;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/webkitsec/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, v2, Landroid/webkitsec/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    iget-boolean v4, v2, Landroid/webkitsec/BrowserFrame$JSObject;->requireAnnotation:Z

    invoke-direct {p0, p1, v3, v0, v4}, Landroid/webkitsec/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 697
    .end local v0    # "interfaceName":Ljava/lang/String;
    .end local v2    # "jsobject":Landroid/webkitsec/BrowserFrame$JSObject;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 698
    return-void
.end method


# virtual methods
.method public SetUAProfURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "UAProfURL"    # Ljava/lang/String;

    .prologue
    .line 1470
    const-string v0, "BrowserFrame"

    const-string v1, "Calling SetUAProfURL in BrowserFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeSetUAProfURL(Ljava/lang/String;)V

    .line 1472
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "requireAnnotation"    # Z

    .prologue
    .line 750
    sget-boolean v0, Landroid/webkitsec/BrowserFrame;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 751
    :cond_0
    invoke-virtual {p0, p2}, Landroid/webkitsec/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    new-instance v1, Landroid/webkitsec/BrowserFrame$JSObject;

    invoke-direct {v1, p0, p1, p3}, Landroid/webkitsec/BrowserFrame$JSObject;-><init>(Landroid/webkitsec/BrowserFrame;Ljava/lang/Object;Z)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    return-void
.end method

.method public native clearCache()V
.end method

.method committed()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/webkitsec/BrowserFrame;->nativeDestroyFrame()V

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mBlockMessages:Z

    .line 571
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method didFirstLayout()V
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    .line 472
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->contentDraw()V

    .line 475
    :cond_0
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v0, "text":Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 662
    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    .line 666
    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->childFramesAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 669
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 670
    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 644
    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 645
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 646
    return-void
.end method

.method firstLayoutDone()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method getCallbackProxy()Landroid/webkitsec/CallbackProxy;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    return-object v0
.end method

.method public getReaderData(Ljava/lang/String;)V
    .locals 2
    .param p1, "reader_data"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->getReaderData(Ljava/lang/String;)V

    .line 436
    const-string/jumbo v0, "webkit"

    const-string v1, "Reader:BrowserFrame - getReaderData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method public getRecognizeData(Ljava/lang/String;)V
    .locals 2
    .param p1, "recog_data"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->getRecognizeData(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v0, "webkit"

    const-string v1, "Reader:BrowserFrame - getRecognizeData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method getShouldStartScrolledRight()Z
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Landroid/webkitsec/BrowserFrame;->nativeGetShouldStartScrolledRight(I)Z

    move-result v0

    return v0
.end method

.method getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    .line 400
    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->nativeGoBackOrForward(I)V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    .line 402
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 580
    iget-boolean v5, p0, Landroid/webkitsec/BrowserFrame;->mBlockMessages:Z

    if-eqz v5, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 585
    :pswitch_0
    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebSettingsClassic;->getSavePassword()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->hasPasswordField()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 586
    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v5}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/WebBackForwardListClassic;->getCurrentItem()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v1

    .line 588
    .local v1, "item":Landroid/webkitsec/WebHistoryItem;
    if-eqz v1, :cond_0

    .line 589
    new-instance v4, Landroid/net/WebAddress;

    invoke-virtual {v1}, Landroid/webkitsec/WebHistoryItemClassic;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 592
    .local v4, "uri":Landroid/net/WebAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "schemePlusHost":Ljava/lang/String;
    iget-object v5, p0, Landroid/webkitsec/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/webkitsec/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v0

    .line 595
    .local v0, "database":Landroid/webkitsec/WebViewDatabaseClassic;
    invoke-virtual {v0, v2}, Landroid/webkitsec/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "up":[Ljava/lang/String;
    if-nez v3, :cond_2

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 598
    invoke-virtual {v0, v2}, Landroid/webkitsec/WebViewDatabaseClassic;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 600
    :cond_2
    if-eqz v3, :cond_0

    aget-object v5, v3, v7

    if-eqz v5, :cond_0

    .line 601
    aget-object v5, v3, v7

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {p0, v5, v6}, Landroid/webkitsec/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    .end local v0    # "database":Landroid/webkitsec/WebViewDatabaseClassic;
    .end local v1    # "item":Landroid/webkitsec/WebHistoryItem;
    .end local v2    # "schemePlusHost":Ljava/lang/String;
    .end local v3    # "up":[Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/WebAddress;
    :pswitch_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Landroid/webkitsec/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto/16 :goto_0

    .line 614
    :pswitch_2
    iget v5, p0, Landroid/webkitsec/BrowserFrame;->mOrientation:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eq v5, v6, :cond_0

    .line 615
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, p0, Landroid/webkitsec/BrowserFrame;->mOrientation:I

    .line 616
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5}, Landroid/webkitsec/BrowserFrame;->nativeOrientationChanged(I)V

    goto/16 :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 732
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mWebViewCore:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v2

    instance-of v2, v2, Landroid/webkitsec/HtmlComposerView;

    if-eqz v2, :cond_0

    .line 744
    :goto_0
    return v0

    .line 736
    :cond_0
    iget-boolean v2, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v2, v0, :cond_1

    move v0, v1

    .line 737
    goto :goto_0

    .line 739
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/BrowserFrame;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v2, p1}, Landroid/webkitsec/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 741
    invoke-virtual {p0}, Landroid/webkitsec/BrowserFrame;->didFirstLayout()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 744
    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    .line 362
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 363
    :cond_0
    const-string p5, "about:blank"

    .line 365
    :cond_1
    if-nez p2, :cond_2

    .line 366
    const-string p2, ""

    .line 371
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 372
    :cond_3
    const-string p1, "about:blank"

    .line 374
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 375
    :cond_5
    const-string/jumbo p3, "text/html"

    .line 377
    :cond_6
    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    .line 379
    return-void
.end method

.method loadType()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadType:I

    return v0
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
    .line 315
    .local p2, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->urlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    .line 321
    invoke-static {p1}, Landroid/webkitsec/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    goto :goto_0

    .line 326
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public native nativeDestroyFrame()V
.end method

.method native nativeSslClientCert(IJ[[B)V
.end method

.method native nativeSslClientCert(I[B[[B)V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 339
    invoke-direct {p0, p1}, Landroid/webkitsec/BrowserFrame;->urlBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    .line 345
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    goto :goto_0
.end method

.method public native reload(Z)V
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 759
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Landroid/webkitsec/BrowserFrame;->mRemovedJavaScriptObjects:Ljava/util/Set;

    iget-object v1, p0, Landroid/webkitsec/BrowserFrame;->mJavaScriptObjects:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_0
    return-void
.end method

.method saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z

    .prologue
    .line 390
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/BrowserFrame;->nativeSaveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 1543
    iget-boolean v0, p0, Landroid/webkitsec/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    .line 1544
    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->resetLoadingStates()V

    .line 1546
    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/BrowserFrame;->nativeStopLoading()V

    .line 1547
    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
