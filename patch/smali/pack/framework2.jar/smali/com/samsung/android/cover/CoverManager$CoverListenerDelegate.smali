.class Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
.super Lcom/samsung/android/cover/ICoverManagerCallback$Stub;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverListenerDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field final synthetic this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->this$0:Lcom/samsung/android/cover/CoverManager;

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 363
    if-nez p3, :cond_0

    # getter for: Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/cover/CoverManager;->access$000(Lcom/samsung/android/cover/CoverManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 366
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate$1;-><init>(Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V

    iput-object v1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 379
    return-void

    .line 363
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;)Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method


# virtual methods
.method public coverCallback(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 393
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 394
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 395
    iget-object v1, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 396
    return-void
.end method

.method public getListener()Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
