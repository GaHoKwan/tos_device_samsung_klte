.class final Landroid/app/ContextImpl$68;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 925
    const-string v2, "multiwindow_facade"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 926
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    move-result-object v1

    .line 927
    .local v1, "service":Lcom/samsung/android/multiwindow/IMultiWindowFacade;
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-direct {v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;-><init>(Lcom/samsung/android/multiwindow/IMultiWindowFacade;)V

    return-object v2
.end method
