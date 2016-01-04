.class Lcom/android/server/glancecard/CardRecord;
.super Ljava/lang/Object;
.source "GlanceCardManagerService.java"


# instance fields
.field private mCardArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glancecard/GlanceCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/glancecard/CardRecord;->mComponentName:Landroid/content/ComponentName;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    .line 418
    iput-object p1, p0, Lcom/android/server/glancecard/CardRecord;->mComponentName:Landroid/content/ComponentName;

    .line 419
    return-void
.end method


# virtual methods
.method public declared-synchronized addCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)V
    .locals 1
    .param p1, "card"    # Lcom/samsung/android/glancecard/GlanceCardInfo;

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/glancecard/CardRecord;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glancecard/GlanceCardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized removeCard(I)V
    .locals 3
    .param p1, "cardId"    # I

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 427
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 428
    iget-object v2, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glancecard/GlanceCardInfo;

    iget v2, v2, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    if-ne v2, p1, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 432
    :cond_1
    monitor-exit p0

    return-void

    .line 426
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeGroup(I)V
    .locals 3
    .param p1, "groupId"    # I

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 436
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 437
    iget-object v2, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glancecard/GlanceCardInfo;

    iget v2, v2, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardGroupId:I

    if-ne v2, p1, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/server/glancecard/CardRecord;->mCardArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 441
    :cond_1
    monitor-exit p0

    return-void

    .line 435
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
