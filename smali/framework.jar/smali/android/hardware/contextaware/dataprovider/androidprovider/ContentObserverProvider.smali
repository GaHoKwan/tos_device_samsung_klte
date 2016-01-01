.class public abstract Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "ContentObserverProvider.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->unregisterContentObserver()V

    .line 125
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->registerContentObserver()V

    .line 115
    return-void
.end method

.method protected abstract getContentObserver()Landroid/database/ContentObserver;
.end method

.method protected final getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method protected initializeManager()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "mContext is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    goto :goto_0
.end method

.method protected isNotifyForDescendents()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected final registerContentObserver()V
    .locals 4

    .prologue
    .line 138
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->isNotifyForDescendents()Z

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected terminateManager()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 77
    return-void
.end method

.method protected final unregisterContentObserver()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected updateContext(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 164
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/ContentObserverProvider;->notifyObserver()V

    .line 165
    return-void
.end method
