.class Landroid/webkitsec/WebView$FindListenerDistributor;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkitsec/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindListenerDistributor"
.end annotation


# instance fields
.field private mFindDialogFindListener:Landroid/webkitsec/WebView$FindListener;

.field private mUserFindListener:Landroid/webkitsec/WebView$FindListener;

.field final synthetic this$0:Landroid/webkitsec/WebView;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebView;)V
    .locals 0

    .prologue
    .line 2038
    iput-object p1, p0, Landroid/webkitsec/WebView$FindListenerDistributor;->this$0:Landroid/webkitsec/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/WebView;
    .param p2, "x1"    # Landroid/webkitsec/WebView$1;

    .prologue
    .line 2038
    invoke-direct {p0, p1}, Landroid/webkitsec/WebView$FindListenerDistributor;-><init>(Landroid/webkitsec/WebView;)V

    return-void
.end method

.method static synthetic access$002(Landroid/webkitsec/WebView$FindListenerDistributor;Landroid/webkitsec/WebView$FindListener;)Landroid/webkitsec/WebView$FindListener;
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebView$FindListenerDistributor;
    .param p1, "x1"    # Landroid/webkitsec/WebView$FindListener;

    .prologue
    .line 2038
    iput-object p1, p0, Landroid/webkitsec/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkitsec/WebView$FindListener;

    return-object p1
.end method

.method static synthetic access$2102(Landroid/webkitsec/WebView$FindListenerDistributor;Landroid/webkitsec/WebView$FindListener;)Landroid/webkitsec/WebView$FindListener;
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebView$FindListenerDistributor;
    .param p1, "x1"    # Landroid/webkitsec/WebView$FindListener;

    .prologue
    .line 2038
    iput-object p1, p0, Landroid/webkitsec/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkitsec/WebView$FindListener;

    return-object p1
.end method


# virtual methods
.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .prologue
    .line 2045
    iget-object v0, p0, Landroid/webkitsec/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkitsec/WebView$FindListener;

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Landroid/webkitsec/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkitsec/WebView$FindListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebView$FindListener;->onFindResultReceived(IIZ)V

    .line 2050
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkitsec/WebView$FindListener;

    if-eqz v0, :cond_1

    .line 2051
    iget-object v0, p0, Landroid/webkitsec/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkitsec/WebView$FindListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebView$FindListener;->onFindResultReceived(IIZ)V

    .line 2054
    :cond_1
    return-void
.end method
