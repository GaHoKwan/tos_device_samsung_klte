.class public Lcom/android/internal/app/ProcessStats$DurationsTable;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationsTable"
.end annotation


# instance fields
.field public mDurationsTable:[I

.field public mDurationsTableSize:I

.field public final mName:Ljava/lang/String;

.field public final mStats:Lcom/android/internal/app/ProcessStats;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addDuration(IJ)V
    .locals 7

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iget v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    invoke-static {v4, v5, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v3, v4, v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v5, v3, v5

    sget v6, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v4, v3, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v4, v5

    aget-wide v5, v2, v4

    add-long/2addr v5, p2

    aput-wide v5, v2, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iput-object v5, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    iput v5, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    xor-int/lit8 v5, v1, -0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p1, v6}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "ProcessStats"

    const-string v5, "addDuration: IndexOutOfBoundsException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method

.method addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    iget v3, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v0, v3, v1

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v3, v0, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v2, v3, v4

    iget-object v3, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method copyDurationsTo(Lcom/android/internal/app/ProcessStats$DurationsTable;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iput v7, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v2, v4, v0

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v4, v2, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v4, v5

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v3, v5}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v5, v1, v3

    aput v5, v4, v0

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v5, v2, v7}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v5

    invoke-virtual {v4, v1, v7, v5, v6}, Lcom/android/internal/app/ProcessStats;->setLong(IIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v4, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v4, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v4, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iput v7, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    goto :goto_1
.end method

.method getDuration(IJ)J
    .locals 4

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method readDurationsFromParcel(Landroid/os/Parcel;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    const-string v3, "durations"

    # invokes: Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    sget-object v2, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    array-length v0, v0

    :cond_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method resetDurationsSafely()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    return-void
.end method

.method writeDurationsToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
