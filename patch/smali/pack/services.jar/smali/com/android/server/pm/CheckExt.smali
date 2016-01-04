.class public Lcom/android/server/pm/CheckExt;
.super Ljava/lang/Object;
.source "CheckExt.java"

# interfaces
.implements Lcom/android/server/pm/ICheckExt;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private checklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/ICheckExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v1, "CheckExt"

    iput-object v1, p0, Lcom/android/server/pm/CheckExt;->TAG:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/android/server/pm/xmlCheckExt;

    invoke-direct {v0}, Lcom/android/server/pm/xmlCheckExt;-><init>()V

    .line 31
    .local v0, "check":Lcom/android/server/pm/ICheckExt;
    iget-object v1, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method public varargs doCheck([Ljava/lang/String;)Z
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v3, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v2

    .line 38
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/android/server/pm/CheckExt;->checklist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ICheckExt;

    .line 40
    .local v0, "check":Lcom/android/server/pm/ICheckExt;
    invoke-interface {v0, p1}, Lcom/android/server/pm/ICheckExt;->doCheck([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    const/4 v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
