.class public Landroid/webkitsec/WebStorage;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebStorage$Origin;,
        Landroid/webkitsec/WebStorage$QuotaUpdater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/webkitsec/WebStorage;
    .locals 1

    invoke-static {}, Landroid/webkitsec/WebViewFactory;->getProvider()Landroid/webkitsec/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkitsec/WebViewFactoryProvider;->getWebStorage()Landroid/webkitsec/WebStorage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllData()V
    .locals 0

    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getOrigins(Landroid/webkitsec/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkitsec/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkitsec/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
