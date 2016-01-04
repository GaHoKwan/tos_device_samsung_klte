.class public Lcom/android/server/ssrm/settings/SortedArrayList;
.super Ljava/util/ArrayList;
.source "SortedArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lcom/android/server/ssrm/settings/SortedArrayList;, "Lcom/android/server/ssrm/settings/SortedArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public insertSorted(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/android/server/ssrm/settings/SortedArrayList;, "Lcom/android/server/ssrm/settings/SortedArrayList<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 34
    .local v2, "lo":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "hi":I
    move-object v0, p1

    .line 35
    check-cast v0, Ljava/lang/Comparable;

    .line 36
    .local v0, "cmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    :goto_0
    if-gt v2, v1, :cond_1

    .line 37
    sub-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    add-int v3, v2, v4

    .line 38
    .local v3, "mid":I
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    .line 39
    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1

    .line 41
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 46
    .end local v3    # "mid":I
    :cond_1
    invoke-virtual {p0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    return-void
.end method
