.class Landroid/webkitsec/WebViewCore$4;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkitsec/GeolocationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewCore;->geolocationPermissionsShowPrompt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewCore;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$4;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "allow"    # Z
    .param p3, "remember"    # Z

    .prologue
    .line 552
    new-instance v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;-><init>()V

    .line 553
    .local v0, "data":Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;
    iput-object p1, v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    .line 554
    iput-boolean p2, v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    .line 555
    iput-boolean p3, v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    .line 557
    iget-object v1, p0, Landroid/webkitsec/WebViewCore$4;->this$0:Landroid/webkitsec/WebViewCore;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 558
    return-void
.end method
