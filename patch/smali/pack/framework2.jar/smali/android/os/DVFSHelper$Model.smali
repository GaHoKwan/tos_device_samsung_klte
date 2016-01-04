.class Landroid/os/DVFSHelper$Model;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Model"
.end annotation


# instance fields
.field protected AMS_RESUME_ARM_FREQ:I

.field protected AMS_RESUME_CPU_CORE:I

.field protected AMS_RESUME_GPU_FREQ:I

.field protected BROWSER_FLING_ARM_FREQ:I

.field protected GALLERY_TOUCH_ARM_FREQ:I

.field protected GROUP_PLAY_ARM_FREQ:I

.field protected LAUNCHER_TOUCH_ARM_FREQ:I

.field protected LAUNCHER_TOUCH_BOOST_TIMEOUT:I

.field protected LAUNCHER_TOUCH_GPU_FREQ:I

.field protected LIST_SCROLL_ARM_FREQ:I

.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method private constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/DVFSHelper;
    .param p2, "x1"    # Landroid/os/DVFSHelper$1;

    .prologue
    .line 762
    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;)V

    return-void
.end method


# virtual methods
.method public getAMSResumeCPUCore()I
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    return v0
.end method

.method public getAMSResumeCPUFreq()I
    .locals 4

    .prologue
    .line 805
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v1, v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I

    move-result v0

    .line 806
    .local v0, "freq":I
    if-gtz v0, :cond_1

    .line 807
    const/4 v0, -0x1

    .line 812
    .end local v0    # "freq":I
    :cond_0
    :goto_0
    return v0

    .line 809
    .restart local v0    # "freq":I
    :cond_1
    iget v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    if-gt v0, v1, :cond_0

    .line 812
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAMSResumeGPUFreq()I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_GPU_FREQ:I

    return v0
.end method

.method public getBrowserFlingCpuFreq()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_FLING_ARM_FREQ:I

    return v0
.end method

.method public getGalleryTouchCPUFreq()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getLauncherTouchCPUFreq()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getLauncherTouchGPUFreq()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_GPU_FREQ:I

    return v0
.end method

.method public getListScrollCPUFreq()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_ARM_FREQ:I

    return v0
.end method

.method public getRotationCPUFreq()I
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 817
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 819
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getShareMusicCPUFreq()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Landroid/os/DVFSHelper$Model;->GROUP_PLAY_ARM_FREQ:I

    return v0
.end method

.method public getTimeoutForAction(Ljava/lang/String;)I
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 775
    const-string v0, "Launcher_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 778
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 823
    return-void
.end method
