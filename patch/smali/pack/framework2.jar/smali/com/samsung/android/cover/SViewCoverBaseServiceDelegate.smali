.class public Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;
.super Ljava/lang/Object;
.source "SViewCoverBaseServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final SVIEWCOVERBASE_CLASS:Ljava/lang/String; = "com.sec.android.sviewcover.SViewCoverBaseService"

.field private static final SVIEWCOVERBASE_PACKAGE:Ljava/lang/String; = "com.sec.android.sviewcover"

.field private static final SVIEWCOVER_UPDATE_COVERSTATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SViewCoverBaseServiceDelegate"


# instance fields
.field private mPendingCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

.field private mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

.field private final mSViewCoverConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    invoke-direct {v1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;

    .line 63
    new-instance v1, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;-><init>(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)V

    iput-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverConnection:Landroid/content/ServiceConnection;

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sviewcover"

    const-string v2, "com.sec.android.sviewcover.SViewCoverBaseService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string v1, "SViewCoverBaseServiceDelegate"

    const-string v2, "*** SViewCoverBase: can\'t bind to com.sec.android.sviewcover.SViewCoverBaseService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v1, "SViewCoverBaseServiceDelegate"

    const-string v2, "*** SViewCoverBase started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onSViewCoverHide()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSViewCoverHide()V

    .line 109
    :cond_0
    return-void
.end method

.method public onSViewCoverShow()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSViewCoverShow()V

    .line 103
    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSystemReady()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseState:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;->systemIsReady:Z

    goto :goto_0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .local v0, "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mPendingCommand:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
