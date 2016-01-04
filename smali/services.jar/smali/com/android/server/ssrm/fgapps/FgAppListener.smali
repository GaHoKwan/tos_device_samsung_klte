.class public abstract Lcom/android/server/ssrm/fgapps/FgAppListener;
.super Ljava/lang/Object;
.source "FgAppListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
    }
.end annotation


# static fields
.field public static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field public static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field public static final SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String; = "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

.field public static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field static mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

.field static mSettingInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;


# instance fields
.field private mBootComplete:Z

.field private mForegroundPackageName:Ljava/lang/String;

.field private mIsFgAppInPackageList:Z

.field mIsRegistered:Z

.field private mMultiWindowOn:Z

.field protected final mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateDisable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    .line 357
    new-instance v0, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    .line 365
    new-instance v0, Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mSettingInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mUpdateDisable:Z

    .line 190
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    .line 192
    const-string v0, "com.sec.android.app.launcher"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    .line 213
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    .line 219
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    .line 287
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 347
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    .line 367
    return-void
.end method

.method protected static fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;)",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 41
    .local v0, "obj":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->setRegister()V

    .line 42
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v0    # "obj":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener;

    return-object v1
.end method

.method public static getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;)",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/FgAppListener;

    return-object v0
.end method

.method protected static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {p0, p1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public static notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 77
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 79
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onFgAppChangedImpl(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 83
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_1
    return-void
.end method

.method public static onBrowserDashModeForAll(Z)V
    .locals 4
    .param p0, "on"    # Z

    .prologue
    .line 68
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 70
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashMode(Z)V

    goto :goto_0

    .line 74
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_1
    return-void
.end method

.method private onFgAppChangedImpl(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 86
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    sput-object p1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    .line 93
    instance-of v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 94
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    invoke-interface {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppChanged()V

    .line 95
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    .local v0, "isFgAppInPackageList":Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v1, v0, :cond_0

    .line 97
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    move-object v1, p0

    .line 98
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppInPackageList(Z)V

    goto :goto_0
.end method

.method public static onReceiveForAll(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 60
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 61
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v2, p0, p1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    goto :goto_0

    .line 65
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_1
    return-void
.end method

.method public static onSIPVisibilityChangedForAll(Z)V
    .locals 4
    .param p0, "visible"    # Z

    .prologue
    .line 371
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iput-boolean p0, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mSIPVisible:Z

    .line 373
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 374
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 375
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    instance-of v3, v2, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;

    if-eqz v3, :cond_0

    .line 377
    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;

    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;->onSipVisibilityChanged(Z)V

    goto :goto_0

    .line 381
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    :cond_1
    return-void
.end method

.method public static onUsbConnectionStatusChangedForAll(Z)V
    .locals 4
    .param p0, "connected"    # Z

    .prologue
    .line 384
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iget-boolean v3, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    if-ne v3, p0, :cond_1

    .line 397
    :cond_0
    return-void

    .line 387
    :cond_1
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iput-boolean p0, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    .line 389
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 390
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    .line 391
    .local v2, "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    instance-of v3, v2, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;

    if-eqz v3, :cond_2

    .line 393
    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;

    .end local v2    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;->onUsbConnectionStatusChanged(Z)V

    goto :goto_0
.end method

.method public static register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 1
    .param p1, "fgAppListener"    # Lcom/android/server/ssrm/fgapps/FgAppListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->setRegister()V

    .line 56
    :cond_0
    return-void
.end method

.method protected static writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToSysfs:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const/4 v1, 0x0

    .line 315
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 317
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    if-eqz v2, :cond_2

    .line 325
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v1, v2

    .line 332
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 323
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_3

    .line 325
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 323
    :cond_3
    :goto_3
    throw v3

    .line 318
    :catch_0
    move-exception v3

    .line 323
    :goto_4
    if-eqz v1, :cond_0

    .line 325
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 326
    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    goto :goto_1

    .line 323
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 318
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method


# virtual methods
.method protected addPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void
.end method

.method protected clearPackages()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 303
    return-void
.end method

.method protected getForegroundPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected isBootComplete()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    return v0
.end method

.method protected isMultiWindowActivated()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    return v0
.end method

.method protected isPackageExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method isRegistered()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    return v0
.end method

.method protected onBrowserDashMode(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 226
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    const/4 v8, 0x0

    .line 114
    const-string v0, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    .line 115
    .local v0, "ACTION_NOTIFY_MULTIWINDOW_STATUS":Ljava/lang/String;
    const-string v1, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    .line 117
    .local v1, "EXTRA_MULTIWINDOW_RUNNING":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 188
    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_1
    sput-object p1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "action":Ljava/lang/String;
    const-string v7, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    const-string v7, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    .line 126
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;

    if-eqz v7, :cond_0

    .line 127
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    iget-boolean v7, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    invoke-interface {p3, v7}, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;->onMultiWindowStatusChanged(Z)V

    goto :goto_0

    .line 130
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_2
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    .line 132
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;

    if-eqz v7, :cond_0

    .line 133
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;->onBootComplete()V

    goto :goto_0

    .line 136
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_3
    const-string v7, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 137
    :cond_4
    const-string v7, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "statusName":Ljava/lang/String;
    const-string v7, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 139
    .local v6, "statusValue":Z
    const-string v7, "PackageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "packageName":Ljava/lang/String;
    const-string v7, "BOOSTER_UPDATE_DISABLE"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 141
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mUpdateDisable:Z

    .line 143
    :cond_5
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;

    if-eqz v7, :cond_0

    .line 144
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3, v5, v6, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;->onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "statusName":Ljava/lang/String;
    .end local v6    # "statusValue":Z
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_6
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 148
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    if-eqz v7, :cond_0

    .line 149
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;->onLockScreenRelease()V

    goto :goto_0

    .line 151
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_7
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 152
    const-string v7, "keyguard"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 154
    .local v3, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-nez v7, :cond_8

    .line 155
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    if-eqz v7, :cond_8

    move-object v7, p3

    .line 156
    check-cast v7, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    invoke-interface {v7}, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;->onLockScreenRelease()V

    .line 159
    :cond_8
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;

    if-eqz v7, :cond_0

    .line 160
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;->onScreenOn()V

    goto/16 :goto_0

    .line 162
    .end local v3    # "mKeyguardManager":Landroid/app/KeyguardManager;
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_9
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 163
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;

    if-eqz v7, :cond_0

    .line 164
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;->onScreenOff()V

    goto/16 :goto_0

    .line 166
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_a
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 167
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;

    if-eqz v7, :cond_0

    .line 168
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;->onBatteryChange(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 170
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_b
    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 172
    :cond_c
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;

    if-eqz v7, :cond_0

    .line 173
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;->onTimeChange(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 175
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_d
    const-string v7, "com.sec.android.intent.action.EMERGENCY_MODE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 176
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;

    if-eqz v7, :cond_0

    .line 177
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;->onEmergencyModeChanged()V

    goto/16 :goto_0

    .line 179
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_e
    const-string v7, "com.sec.android.intent.action.ULTRA_POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 180
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;

    if-eqz v7, :cond_0

    .line 181
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;->onUltraPowerSavingModeChanged()V

    goto/16 :goto_0

    .line 183
    .restart local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    :cond_f
    const-string v7, "com.sec.android.intent.action.POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;

    if-eqz v7, :cond_0

    .line 185
    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;

    .end local p3    # "value":Lcom/android/server/ssrm/fgapps/FgAppListener;
    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;->onPowerSavingModeChanged()V

    goto/16 :goto_0
.end method

.method readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {p1, p2}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setRegister()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    .line 355
    return-void
.end method

.method protected updateForegroundPackageStatus()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    instance-of v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 204
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    invoke-interface {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppChanged()V

    .line 205
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    .local v0, "isFgAppInPackageList":Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v1, v0, :cond_0

    .line 207
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    move-object v1, p0

    .line 208
    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppInPackageList(Z)V

    goto :goto_0
.end method
