.class Landroid/webkitsec/CallbackProxy$UploadFile;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/webkitsec/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkitsec/ValueCallback",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mValue:Landroid/net/Uri;

.field final synthetic this$0:Landroid/webkitsec/CallbackProxy;


# direct methods
.method private constructor <init>(Landroid/webkitsec/CallbackProxy;)V
    .locals 0

    .prologue
    .line 2212
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy$UploadFile;->this$0:Landroid/webkitsec/CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/CallbackProxy$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/CallbackProxy;
    .param p2, "x1"    # Landroid/webkitsec/CallbackProxy$1;

    .prologue
    .line 2212
    invoke-direct {p0, p1}, Landroid/webkitsec/CallbackProxy$UploadFile;-><init>(Landroid/webkitsec/CallbackProxy;)V

    return-void
.end method


# virtual methods
.method public getResult()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy$UploadFile;->mValue:Landroid/net/Uri;

    return-object v0
.end method

.method public onReceiveValue(Landroid/net/Uri;)V
    .locals 2
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    .line 2215
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy$UploadFile;->mValue:Landroid/net/Uri;

    .line 2216
    iget-object v1, p0, Landroid/webkitsec/CallbackProxy$UploadFile;->this$0:Landroid/webkitsec/CallbackProxy;

    monitor-enter v1

    .line 2217
    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy$UploadFile;->this$0:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2218
    monitor-exit v1

    .line 2219
    return-void

    .line 2218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2212
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/webkitsec/CallbackProxy$UploadFile;->onReceiveValue(Landroid/net/Uri;)V

    return-void
.end method
