.class public Lcom/android/internal/telephony/MultiSimManager$SimProfile;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MultiSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimProfile"
.end annotation


# instance fields
.field public mIccId:Ljava/lang/String;

.field public mImsi:Ljava/lang/String;

.field public mIsChanged:Z

.field public mIsInserted:Z

.field public mTableIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIccId:Ljava/lang/String;

    .line 676
    iput-object p2, p0, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mImsi:Ljava/lang/String;

    .line 677
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 681
    instance-of v2, p1, Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 682
    check-cast v0, Lcom/android/internal/telephony/MultiSimManager$SimProfile;

    .line 683
    .local v0, "other":Lcom/android/internal/telephony/MultiSimManager$SimProfile;
    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIccId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mIccId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mImsi:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mImsi:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 686
    .end local v0    # "other":Lcom/android/internal/telephony/MultiSimManager$SimProfile;
    :cond_0
    return v1
.end method

.method public getTableIndex()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mTableIndex:I

    return v0
.end method

.method public setTableIndex(I)V
    .locals 0
    .param p1, "tableIndex"    # I

    .prologue
    .line 694
    iput p1, p0, Lcom/android/internal/telephony/MultiSimManager$SimProfile;->mTableIndex:I

    .line 695
    return-void
.end method
