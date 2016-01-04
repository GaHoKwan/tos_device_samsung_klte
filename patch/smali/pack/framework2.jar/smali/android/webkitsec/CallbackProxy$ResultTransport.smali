.class Landroid/webkitsec/CallbackProxy$ResultTransport;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Landroid/webkitsec/CallbackProxy$ResultTransport;, "Landroid/webkitsec/CallbackProxy$ResultTransport<TE;>;"
    .local p1, "defaultResult":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy$ResultTransport;->mResult:Ljava/lang/Object;

    .line 211
    return-void
.end method


# virtual methods
.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Landroid/webkitsec/CallbackProxy$ResultTransport;, "Landroid/webkitsec/CallbackProxy$ResultTransport<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Landroid/webkitsec/CallbackProxy$ResultTransport;, "Landroid/webkitsec/CallbackProxy$ResultTransport<TE;>;"
    .local p1, "result":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
