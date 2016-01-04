.class public abstract Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
.super Ljava/lang/Object;
.source "DynamicLcdFrameRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DynamicLCDFPS"
.end annotation


# instance fields
.field protected currentFPS:I

.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;


# direct methods
.method protected constructor <init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->resetFPS()V

    .line 78
    return-void
.end method


# virtual methods
.method protected calculateCurrentFPS()I
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x3

    .line 124
    .local v0, "fps":I
    sget-boolean v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 127
    :cond_0
    sget v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    if-lez v1, :cond_1

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    if-eqz v1, :cond_2

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    iget-boolean v1, v1, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    if-eqz v1, :cond_3

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getSysfsPath()Ljava/lang/String;
.end method

.method public handleMonitorStateChanged()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->updateFPS()V

    .line 86
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->updateFPS()V

    .line 82
    return-void
.end method

.method public resetFPS()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->currentFPS:I

    .line 90
    return-void
.end method

.method protected updateFPS()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->calculateCurrentFPS()I

    move-result v0

    .line 95
    .local v0, "newFPS":I
    iget v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->currentFPS:I

    if-eq v1, v0, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->updateSysFSFile(I)V

    .line 97
    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->currentFPS:I

    .line 99
    :cond_0
    return-void
.end method

.method protected updateSysFSFile(I)V
    .locals 5
    .param p1, "fps"    # I

    .prologue
    .line 102
    # getter for: Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSysFSFile: fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->getSysfsPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    # invokes: Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->isFPSValid(I)Z
    invoke-static {v1, p1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->access$100(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    # getter for: Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->getSysfsPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_1
    invoke-static {}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->getInstance()Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->getInstance()Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->getSysfsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->onFrameRateUpdate(ILjava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    # getter for: Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sys FS file wasn\'t updated!!!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
