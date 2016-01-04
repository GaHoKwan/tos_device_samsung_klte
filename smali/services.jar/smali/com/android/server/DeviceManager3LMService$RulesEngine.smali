.class Lcom/android/server/DeviceManager3LMService$RulesEngine;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RulesEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    }
.end annotation


# instance fields
.field private mRulesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 1

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    .line 1819
    return-void
.end method


# virtual methods
.method public addPolicy(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1867
    .local p1, "regexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public checkPolicy(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 1900
    move v1, p2

    .line 1901
    .local v1, "returnCode":Z
    const/4 v0, 0x0

    .line 1904
    .local v0, "longestRegexStrMatch":I
    const/4 v2, 0x1

    return v2
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1823
    const/4 v0, 0x0

    return v0
.end method

.method public loadPolicy(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1884
    .local p1, "regexPermMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public updatePolicy(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "permitted"    # Z

    .prologue
    .line 1837
    const/4 v0, 0x0

    return v0
.end method
