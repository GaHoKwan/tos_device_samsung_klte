.class Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;
.super Landroid/database/ContentObserver;
.source "GlobeMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchSensitivityObserver"
.end annotation


# instance fields
.field mLastAutoAdjustTouch:Z

.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;)V
    .locals 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;->this$0:Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;->mLastAutoAdjustTouch:Z

    .line 46
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;->this$0:Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;

    iget-object v2, v2, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_adjust_touch"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 54
    .local v0, "autoAdjustTouch":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;->mLastAutoAdjustTouch:Z

    if-ne v1, v0, :cond_1

    .line 60
    :goto_1
    return-void

    .end local v0    # "autoAdjustTouch":Z
    :cond_0
    move v0, v1

    .line 52
    goto :goto_0

    .line 57
    .restart local v0    # "autoAdjustTouch":Z
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;->mLastAutoAdjustTouch:Z

    .line 58
    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    .line 59
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode$TouchSensitivityObserver;->this$0:Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;

    iget-object v1, v1, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableGloveMode:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
