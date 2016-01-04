.class Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstallPolicy"
.end annotation


# instance fields
.field final allowCategory:Ljava/lang/String;

.field final category:I

.field final isContainerApp:Z

.field noAuditPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final policyPerms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final seinfo:Ljava/lang/String;

.field trustedPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .param p3, "seinfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "policyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p2, "pkgPolicy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;>;"
    const/4 v1, 0x0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    .line 1003
    iput-object p2, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    .line 1004
    iput-object p3, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    .line 1005
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    .line 1006
    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    .line 1007
    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->trustedPackageNameList:Ljava/util/ArrayList;

    .line 1008
    iput-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->noAuditPackageNameList:Ljava/util/ArrayList;

    .line 1009
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    .line 1010
    return-void
.end method

.method constructor <init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "category"    # I
    .param p5, "allowCategory"    # Ljava/lang/String;
    .param p6, "isContainerApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1016
    .local p1, "policyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p2, "pkgPolicy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;>;"
    .local p7, "trustedPackageNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p8, "noAuditPackageNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    .line 1019
    iput-object p2, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    .line 1020
    iput-object p3, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    .line 1021
    iput p4, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    .line 1022
    iput-object p5, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    .line 1023
    iput-object p7, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->trustedPackageNameList:Ljava/util/ArrayList;

    .line 1024
    iput-object p8, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->noAuditPackageNameList:Ljava/util/ArrayList;

    .line 1025
    iput-boolean p6, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    .line 1026
    return-void
.end method


# virtual methods
.method getSEinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    goto :goto_0
.end method

.method passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->pkgPolicy:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    .line 1033
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1045
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    iget-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 1047
    const-string v1, ",\n"

    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->policyPerms:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1050
    :cond_0
    const-string v1, "allow-all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
