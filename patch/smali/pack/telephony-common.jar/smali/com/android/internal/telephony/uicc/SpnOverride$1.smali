.class final Lcom/android/internal/telephony/uicc/SpnOverride$1;
.super Ljava/lang/Object;
.source "SpnOverride.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SpnOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;)I
    .locals 2
    .param p1, "o1"    # Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;
    .param p2, "o2"    # Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getImsiSubset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;->getImsiSubset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p1, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride$1;->compare(Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;Lcom/android/internal/telephony/uicc/SpnOverride$SpnOverrideInfo;)I

    move-result v0

    return v0
.end method
