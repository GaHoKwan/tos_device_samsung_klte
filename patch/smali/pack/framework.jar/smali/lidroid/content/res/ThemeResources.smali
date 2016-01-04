.class public Llidroid/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ThemeResources"

.field private static sSystem:Llidroid/content/res/ThemeResourcesSystem;


# instance fields
.field protected mBatteryZipFile:Llidroid/content/res/ThemeZipFile;

.field protected mComponentName:Ljava/lang/String;

.field protected mHasValue:Z

.field protected mPackageZipFile:Llidroid/content/res/ThemeZipFile;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Llidroid/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    .line 41
    iput-object p2, p0, Llidroid/content/res/ThemeResources;->mComponentName:Ljava/lang/String;

    .line 42
    invoke-static {p2, p1}, Llidroid/content/res/ThemeZipFile;->getThemeZipFile(Ljava/lang/String;Landroid/content/res/Resources;)Llidroid/content/res/ThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Llidroid/content/res/ThemeResources;->mPackageZipFile:Llidroid/content/res/ThemeZipFile;

    .line 43
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "battery"

    invoke-static {v0, p1}, Llidroid/content/res/ThemeZipFile;->getThemeZipFile(Ljava/lang/String;Landroid/content/res/Resources;)Llidroid/content/res/ThemeZipFile;

    move-result-object v0

    iput-object v0, p0, Llidroid/content/res/ThemeResources;->mBatteryZipFile:Llidroid/content/res/ThemeZipFile;

    .line 47
    :cond_0
    invoke-virtual {p0}, Llidroid/content/res/ThemeResources;->checkUpdate()Z

    .line 48
    return-void
.end method

.method public static getSystem(Landroid/content/res/Resources;)Llidroid/content/res/ThemeResources;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 51
    sget-object v0, Llidroid/content/res/ThemeResources;->sSystem:Llidroid/content/res/ThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 52
    invoke-static {p0}, Llidroid/content/res/ThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/Resources;)Llidroid/content/res/ThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Llidroid/content/res/ThemeResources;->sSystem:Llidroid/content/res/ThemeResourcesSystem;

    .line 55
    :cond_0
    sget-object v0, Llidroid/content/res/ThemeResources;->sSystem:Llidroid/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem()Llidroid/content/res/ThemeResourcesSystem;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Llidroid/content/res/ThemeResources;->sSystem:Llidroid/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method private static isSystemByCookieType(I)Z
    .locals 1
    .param p0, "cookieType"    # I

    .prologue
    .line 92
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemById(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 85
    const/high16 v0, 0x7f000000

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Llidroid/content/res/ThemeResources;->mPackageZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v1}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    move-result v0

    .line 68
    .local v0, "retval":Z
    iget-object v1, p0, Llidroid/content/res/ThemeResources;->mPackageZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v1}, Llidroid/content/res/ThemeZipFile;->hasValues()Z

    move-result v1

    iput-boolean v1, p0, Llidroid/content/res/ThemeResources;->mHasValue:Z

    .line 70
    iget-object v1, p0, Llidroid/content/res/ThemeResources;->mBatteryZipFile:Llidroid/content/res/ThemeZipFile;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Llidroid/content/res/ThemeResources;->mBatteryZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v1}, Llidroid/content/res/ThemeZipFile;->checkUpdate()Z

    move-result v1

    and-int/2addr v0, v1

    .line 74
    :cond_0
    return v0
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Llidroid/content/res/ThemeResources;->mPackageZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v0, p1}, Llidroid/content/res/ThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Llidroid/content/res/ThemeResources;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeCharSequence(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v1, p0, Llidroid/content/res/ThemeResources;->mPackageZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v1, p1, p2}, Llidroid/content/res/ThemeZipFile;->getThemeCharSequence(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 107
    .local v0, "retval":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    instance-of v1, p0, Llidroid/content/res/ThemeResourcesSystem;

    if-nez v1, :cond_0

    invoke-static {p1}, Llidroid/content/res/ThemeResources;->isSystemById(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Llidroid/content/res/ThemeResources;->getSystem()Llidroid/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Llidroid/content/res/ThemeResourcesSystem;->getThemeCharSequence(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "cookieType"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v0, "drawable"

    invoke-virtual {p0, p1, p2, v0}, Llidroid/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "cookieType"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemeFileStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "info":Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    const-string/jumbo v1, "stat_sys_battery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llidroid/content/res/ThemeResources;->mBatteryZipFile:Llidroid/content/res/ThemeZipFile;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Llidroid/content/res/ThemeResources;->mBatteryZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v1, p1}, Llidroid/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 129
    :cond_0
    if-nez v0, :cond_1

    .line 130
    iget-object v1, p0, Llidroid/content/res/ThemeResources;->mPackageZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v1, p1}, Llidroid/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 133
    :cond_1
    return-object v0
.end method

.method public getThemeInt(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v1, p0, Llidroid/content/res/ThemeResources;->mPackageZipFile:Llidroid/content/res/ThemeZipFile;

    invoke-virtual {v1, p1, p2}, Llidroid/content/res/ThemeZipFile;->getThemeInt(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 97
    .local v0, "retval":Ljava/lang/Integer;
    if-nez v0, :cond_0

    instance-of v1, p0, Llidroid/content/res/ThemeResourcesSystem;

    if-nez v1, :cond_0

    invoke-static {p1}, Llidroid/content/res/ThemeResources;->isSystemById(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Llidroid/content/res/ThemeResources;->getSystem()Llidroid/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Llidroid/content/res/ThemeResourcesSystem;->getThemeInt(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    :cond_0
    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Llidroid/content/res/ThemeResources;->mHasValue:Z

    return v0
.end method
