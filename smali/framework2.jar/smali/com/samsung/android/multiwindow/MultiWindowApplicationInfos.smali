.class public Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
.super Landroid/util/Singleton;
.source "MultiWindowApplicationInfos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "/system/etc/multiwindow_blacklist.txt"

.field private static final SUPPORTEDSCALE_ALL_APPLICATIONS:Z

.field private static final SUPPORTED_ALL_APPLICATIONS:Z

.field static sInstance:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;


# instance fields
.field mAvoidInheritStackAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAvoidLaunchStyleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultPenAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExtendScaleAppList:Z

.field mHideAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMaxPenWindowCount:I

.field private mMultiWindowBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNoTitleActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNotSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportMultiInstanceAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSystemResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidLaunchStyleAppList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidInheritStackAppList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportPackageList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportComponentList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mHideAppList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultAppList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultPenAppList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNoTitleActivityList:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mExtendScaleAppList:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMaxPenWindowCount:I

    .line 51
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->initConfig()V

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-object v0
.end method

.method private loadStringArray(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "outArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v5, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 84
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 85
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected create()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->create()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPenWindow(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMaxPenWindowCount:I

    return v0
.end method

.method public initConfig()V
    .locals 2

    .prologue
    .line 59
    const v0, 0x1070051

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 60
    const v0, 0x1070059

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 62
    const v0, 0x1070052

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 64
    const v0, 0x1070055

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 65
    const v0, 0x1070056

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidInheritStackAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 66
    const v0, 0x1070057

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 68
    const v0, 0x1070053

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportPackageList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 69
    const v0, 0x1070054

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportComponentList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 70
    const v0, 0x1070058

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mHideAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 71
    const v0, 0x107005a

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 72
    const v0, 0x107005b

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultPenAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 73
    const v0, 0x107005c

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNoTitleActivityList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    const v1, 0x111007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mExtendScaleAppList:Z

    .line 76
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    const v1, 0x10e0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMaxPenWindowCount:I

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadCscAppList()V

    .line 78
    return-void
.end method

.method public isAvoidInheritStack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 351
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidInheritStackAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAvoidLaunchStyleApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 339
    if-nez p1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAvoidScaleOption(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 367
    if-nez p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDefaultAppList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultPenAppList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultPenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixedRatioApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public isHideAppList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mHideAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoTitleActivityList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNoTitleActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 242
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 15
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMultiWindowBlackList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMultiWindowBlackList:Ljava/util/List;

    .line 17
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/multiwindow_blacklist.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/system/etc/multiwindow_blacklist.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 22
    .local v1, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMultiWindowBlackList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMultiWindowBlackList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSupportComponentList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.sec.android.multiwindow.fullscreen_minimizable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "bSupportMultiWindow":Z
    if-eqz p1, :cond_1

    .line 217
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.support.multiwindow"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    :cond_0
    const/4 v2, 0x1

    .line 220
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 221
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "activityWindowStyle":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v1, "activityWindowStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 225
    const-string v3, "fullscreenOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    const/4 v2, 0x0

    .line 234
    .end local v0    # "activityWindowStyle":Ljava/lang/String;
    .end local v1    # "activityWindowStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return v2
.end method

.method public isSupportPackageList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPopup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "com.sec.android.app.popupuireceiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 258
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.popupwindow.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 6
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v2

    .line 176
    :cond_1
    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mExtendScaleAppList:Z

    if-eqz v4, :cond_2

    .line 181
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 182
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 185
    goto :goto_0

    .line 189
    :cond_2
    const-string v4, "android"

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 190
    goto :goto_0

    .line 193
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    :cond_4
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 196
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "applicationStyle":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    .local v1, "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "freestyleOnly"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .end local v0    # "applicationStyle":Ljava/lang/String;
    .end local v1    # "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move v2, v3

    .line 204
    goto :goto_0
.end method

.method public loadCscAppList()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 92
    const-string v7, ""

    .line 93
    .local v7, "disableApplication":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 94
    new-instance v6, Ljava/util/ArrayList;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    .local v6, "disableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "app":Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 97
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 99
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v1    # "app":Ljava/lang/String;
    .end local v6    # "disableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_MultiWindow_AddOnApp"

    invoke-virtual {v9, v10, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "cscAddOnApp":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    .local v3, "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "addOnApp":Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 108
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 110
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 112
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    .end local v0    # "addOnApp":Ljava/lang/String;
    .end local v3    # "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_AddOnApp4PenWindow"

    invoke-virtual {v9, v10, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "cscAddPenWindow":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 119
    new-instance v5, Ljava/util/ArrayList;

    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    .local v5, "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    .restart local v0    # "addOnApp":Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 122
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 124
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 126
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 130
    .end local v0    # "addOnApp":Ljava/lang/String;
    .end local v5    # "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method
