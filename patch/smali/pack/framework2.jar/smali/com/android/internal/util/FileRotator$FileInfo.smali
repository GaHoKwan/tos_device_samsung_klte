.class Lcom/android/internal/util/FileRotator$FileInfo;
.super Ljava/lang/Object;
.source "FileRotator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/FileRotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public endMillis:J

.field public final prefix:Ljava/lang/String;

.field public startMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    .line 455
    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 5

    .prologue
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v0, "name":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    iget-wide v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 496
    iget-wide v1, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 498
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isActive()Z
    .locals 4

    .prologue
    .line 505
    iget-wide v0, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 463
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    iput-wide v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 465
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 466
    .local v1, "dotIndex":I
    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 469
    .local v0, "dashIndex":I
    if-eq v1, v7, :cond_0

    if-ne v0, v7, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v3

    .line 472
    :cond_1
    iget-object v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    add-int/lit8 v5, v1, 0x1

    :try_start_0
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->startMillis:J

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    if-ne v5, v4, :cond_2

    .line 478
    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J

    :goto_1
    move v3, v4

    .line 483
    goto :goto_0

    .line 480
    :cond_2
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/util/FileRotator$FileInfo;->endMillis:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 484
    :catch_0
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
