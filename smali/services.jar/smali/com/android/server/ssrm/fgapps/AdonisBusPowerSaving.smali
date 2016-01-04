.class public Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "AdonisBusPowerSaving.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "SSRMv2:AdonisBusPowerSaving"


# instance fields
.field mLastValue:I

.field mTargetValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 53
    iput v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mLastValue:I

    .line 55
    iput v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    .line 28
    const-string v0, "com.facebook.katana"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 29
    const-string v0, "com.google.android.talk"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 30
    const-string v0, "com.kakao.talk"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 31
    const-string v0, "com.whatsapp"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 43
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isPackageExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    .line 45
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->updateSysfs()V

    goto :goto_0

    .line 43
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 51
    return-void
.end method

.method updateSysfs()V
    .locals 4

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mLastValue:I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    if-eq v0, v1, :cond_0

    .line 59
    iget v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    iput v0, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mLastValue:I

    .line 60
    const-string v0, "SSRMv2:AdonisBusPowerSaving"

    const-string v1, "/sys/class/devfreq/exynos5-busfreq-mif/en_monitoring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "SSRMv2:AdonisBusPowerSaving"

    const-string v1, "/sys/class/devfreq/exynos5-busfreq-int/en_monitoring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;->mTargetValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
