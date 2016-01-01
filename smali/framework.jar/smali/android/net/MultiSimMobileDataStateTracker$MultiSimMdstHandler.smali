.class Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;
.super Landroid/os/Handler;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MultiSimMobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiSimMdstHandler"
.end annotation


# instance fields
.field private mMdst:Landroid/net/MultiSimMobileDataStateTracker;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/net/MultiSimMobileDataStateTracker;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "mdst"    # Landroid/net/MultiSimMobileDataStateTracker;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    iput-object p2, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 126
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    # getter for: Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/MultiSimMobileDataStateTracker;->access$000(Landroid/net/MultiSimMobileDataStateTracker;)[Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    aput-object v0, v1, v2

    goto :goto_0

    .line 139
    :sswitch_1
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;->mMdst:Landroid/net/MultiSimMobileDataStateTracker;

    # getter for: Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/MultiSimMobileDataStateTracker;->access$000(Landroid/net/MultiSimMobileDataStateTracker;)[Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
    .end sparse-switch
.end method
