.class public Landroid/app/AndroidAppHelper;
.super Ljava/lang/Object;
.source "AndroidAppHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static currentApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 16
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    :goto_0
    return-object v1

    .line 17
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 22
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "android"

    goto :goto_0
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 9
    .local v0, "processName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 10
    const-string v0, "android"

    .line 11
    .end local v0    # "processName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
