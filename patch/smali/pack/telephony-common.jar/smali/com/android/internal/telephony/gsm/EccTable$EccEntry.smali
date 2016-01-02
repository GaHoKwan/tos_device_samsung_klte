.class Lcom/android/internal/telephony/gsm/EccTable$EccEntry;
.super Ljava/lang/Object;
.source "EccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/EccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/gsm/EccTable$EccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field emergencyNumberWithSIM:Ljava/lang/String;

.field emergencyNumberWithoutSIM:Ljava/lang/String;

.field plmn:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "emergencyNumberWithSIM"    # Ljava/lang/String;
    .param p3, "emergencyNumberWithoutSIM"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->plmn:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithSIM:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->emergencyNumberWithoutSIM:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/gsm/EccTable$EccEntry;)I
    .locals 2
    .param p1, "o"    # Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->plmn:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/EccTable$EccEntry;->compareTo(Lcom/android/internal/telephony/gsm/EccTable$EccEntry;)I

    move-result v0

    return v0
.end method
