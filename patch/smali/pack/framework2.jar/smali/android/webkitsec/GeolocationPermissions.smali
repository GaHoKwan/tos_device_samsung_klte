.class public Landroid/webkitsec/GeolocationPermissions;
.super Ljava/lang/Object;
.source "GeolocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/GeolocationPermissions$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/webkitsec/GeolocationPermissions;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/webkitsec/WebViewFactory;->getProvider()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getGeolocationPermissions()Landroid/webkitsec/GeolocationPermissions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allow(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 122
    return-void
.end method

.method public clear(Ljava/lang/String;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public clearAll()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public getAllowed(Ljava/lang/String;Landroid/webkitsec/ValueCallback;)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public getOrigins(Landroid/webkitsec/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    return-void
.end method
