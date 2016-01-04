.class public final Llidroid/content/res/ThemeResourcesPackage;
.super Llidroid/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ThemeResourcesPackage"

.field public static final sFrameworks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Llidroid/content/res/ThemeResourcesPackage;->sFrameworks:Landroid/util/SparseArray;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v0, "frameworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "framework-res"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v1, Llidroid/content/res/ThemeResourcesPackage;->sFrameworks:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "frameworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .restart local v0    # "frameworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "twframework-res"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const-string/jumbo v1, "touchwiz"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Llidroid/content/res/ThemeResourcesPackage;->sFrameworks:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "frameworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .restart local v0    # "frameworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "lidroid-res"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "lidroid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v1, Llidroid/content/res/ThemeResourcesPackage;->sFrameworks:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Llidroid/content/res/ThemeResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Llidroid/content/res/ThemeResourcesPackage;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Llidroid/content/res/ThemeResourcesPackage;

    invoke-direct {v0, p0, p1}, Llidroid/content/res/ThemeResourcesPackage;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getThemeFileStream(ILjava/lang/String;Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 7
    .param p1, "cookieType"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v4, Llidroid/content/res/ThemeResourcesPackage;->sFrameworks:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 54
    .local v1, "frms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "frm":Ljava/lang/String;
    const-string v4, "%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Llidroid/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 57
    .local v3, "info":Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v3, :cond_0

    .line 65
    .end local v0    # "frm":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Llidroid/content/res/ThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v3

    .line 62
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Llidroid/content/res/ThemeResourcesPackage;->getSystem()Llidroid/content/res/ThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Llidroid/content/res/ThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    goto :goto_0

    .line 65
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0, p2}, Llidroid/content/res/ThemeResourcesPackage;->getThemeFileStream(Ljava/lang/String;)Llidroid/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    goto :goto_0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Llidroid/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Llidroid/content/res/ThemeResourcesPackage;->getSystem()Llidroid/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0}, Llidroid/content/res/ThemeResourcesSystem;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
