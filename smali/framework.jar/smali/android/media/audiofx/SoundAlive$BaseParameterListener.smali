.class Landroid/media/audiofx/SoundAlive$BaseParameterListener;
.super Ljava/lang/Object;
.source "SoundAlive.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/SoundAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/SoundAlive;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/SoundAlive;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/SoundAlive;Landroid/media/audiofx/SoundAlive$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/audiofx/SoundAlive;
    .param p2, "x1"    # Landroid/media/audiofx/SoundAlive$1;

    .prologue
    .line 479
    invoke-direct {p0, p1}, Landroid/media/audiofx/SoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SoundAlive;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 9
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 484
    const/4 v0, 0x0

    .line 486
    .local v0, "l":Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    # getter for: Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/audiofx/SoundAlive;->access$000(Landroid/media/audiofx/SoundAlive;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 487
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    # getter for: Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    invoke-static {v1}, Landroid/media/audiofx/SoundAlive;->access$100(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    # getter for: Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    invoke-static {v1}, Landroid/media/audiofx/SoundAlive;->access$100(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    move-result-object v0

    .line 490
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    if-eqz v0, :cond_3

    .line 492
    const/4 v3, -0x1

    .line 493
    .local v3, "p1":I
    const/4 v4, -0x1

    .line 494
    .local v4, "p2":I
    const/4 v5, -0x1

    .line 496
    .local v5, "v":I
    array-length v1, p3

    if-lt v1, v7, :cond_1

    .line 497
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    invoke-virtual {v1, p3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v3

    .line 498
    array-length v1, p3

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 499
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    invoke-virtual {v1, p3, v7}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    .line 502
    :cond_1
    array-length v1, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 503
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    invoke-virtual {v1, p4, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v5

    .line 508
    :cond_2
    :goto_0
    if-eq v3, v8, :cond_3

    if-eq v5, v8, :cond_3

    .line 509
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/SoundAlive;IIII)V

    .line 512
    .end local v3    # "p1":I
    .end local v4    # "p2":I
    .end local v5    # "v":I
    :cond_3
    return-void

    .line 490
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 504
    .restart local v3    # "p1":I
    .restart local v4    # "p2":I
    .restart local v5    # "v":I
    :cond_4
    array-length v1, p4

    if-ne v1, v7, :cond_2

    .line 505
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;->this$0:Landroid/media/audiofx/SoundAlive;

    invoke-virtual {v1, p4, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    goto :goto_0
.end method
