.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method private populateAllClientRanges()V
    .locals 9

    .prologue
    .line 656
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 657
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 658
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 660
    .local v5, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 661
    .local v0, "clientLen":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 662
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 663
    .local v4, "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 661
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 657
    .end local v4    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v0    # "clientLen":I
    .end local v2    # "j":I
    .end local v5    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1
    return-void
.end method

.method private populateAllRanges()V
    .locals 5

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 645
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 647
    .local v0, "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v2, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    goto :goto_0

    .line 649
    .end local v0    # "currRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public clearRanges()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 674
    return-void
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 22
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 448
    .local v11, "len":I
    if-nez p1, :cond_1

    const/16 v20, 0x3e7

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 450
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 451
    .local v12, "mRangesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 452
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    if-eqz v20, :cond_0

    .line 453
    const/16 v20, 0x1

    .line 598
    .end local v12    # "mRangesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_0
    monitor-exit p0

    return v20

    .line 456
    .restart local v12    # "mRangesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 457
    const/16 v20, 0x0

    goto :goto_0

    .line 462
    .end local v12    # "mRangesTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_14

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 464
    .local v17, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 465
    const/16 v20, 0x0

    goto :goto_0

    .line 466
    :cond_2
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, p2

    move/from16 v1, v20

    if-gt v0, v1, :cond_13

    .line 469
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    .line 472
    .local v4, "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 473
    .local v7, "crLength":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_5

    .line 474
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 475
    .local v5, "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    iget-object v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 480
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 483
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 484
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 487
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 497
    .end local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_5
    const/high16 v10, -0x80000000

    .line 498
    .local v10, "largestEndId":I
    const/16 v19, 0x0

    .line 501
    .local v19, "updateStarted":Z
    const/4 v6, 0x0

    .local v6, "crIndex":I
    :goto_2
    if-ge v6, v7, :cond_13

    .line 502
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 503
    .restart local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_11

    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_11

    iget-object v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 505
    add-int/lit8 v20, v7, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_8

    .line 506
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v10, :cond_6

    .line 509
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 510
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 513
    :cond_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 514
    move-object/from16 v0, v17

    iput v10, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 516
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 518
    :cond_7
    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 519
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 520
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 528
    :cond_8
    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 530
    .local v18, "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v6, :cond_a

    .line 536
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v16, v0

    .line 537
    .local v16, "nextStartId":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 538
    const/16 v19, 0x1

    .line 539
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 542
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 549
    .end local v16    # "nextStartId":I
    :cond_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v13, "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object/from16 v8, v18

    .line 552
    .local v8, "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v15, v6, 0x1

    .local v15, "nextIndex":I
    :goto_3
    if-ge v15, v7, :cond_e

    .line 553
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 554
    .local v14, "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    move/from16 v20, v0

    add-int/lit8 v21, v10, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    .line 555
    const/16 v19, 0x1

    .line 556
    iput v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 557
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .end local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 565
    .restart local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_4
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v10, :cond_b

    .line 566
    iget v10, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 552
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 560
    :cond_c
    iget v0, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v20, v0

    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 561
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 563
    :cond_d
    iget-object v0, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 445
    .end local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6    # "crIndex":I
    .end local v7    # "crLength":I
    .end local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v9    # "i":I
    .end local v10    # "largestEndId":I
    .end local v11    # "len":I
    .end local v13    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v14    # "nextCr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v15    # "nextIndex":I
    .end local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v18    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v19    # "updateStarted":Z
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 571
    .restart local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v6    # "crIndex":I
    .restart local v7    # "crLength":I
    .restart local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v9    # "i":I
    .restart local v10    # "largestEndId":I
    .restart local v11    # "len":I
    .restart local v13    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v15    # "nextIndex":I
    .restart local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v18    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v19    # "updateStarted":Z
    :cond_e
    move/from16 v0, p2

    if-ge v10, v0, :cond_f

    .line 572
    const/16 v19, 0x1

    .line 573
    :try_start_2
    iput v10, v8, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 575
    :cond_f
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v13}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 580
    if-eqz v19, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v20

    if-nez v20, :cond_10

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 584
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 587
    :cond_10
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 590
    .end local v8    # "currentRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v13    # "newRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v15    # "nextIndex":I
    .end local v18    # "rangeCopy":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_11
    iget v0, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v10, :cond_12

    .line 591
    iget v10, v5, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 462
    .end local v4    # "clients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v5    # "cr":Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v6    # "crIndex":I
    .end local v7    # "crLength":I
    .end local v10    # "largestEndId":I
    .end local v19    # "updateStarted":Z
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 598
    .end local v17    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 20
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "client"    # Ljava/lang/String;

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 196
    .local v10, "len":I
    if-nez p1, :cond_0

    const/16 v17, 0x3e7

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 197
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    const/16 v17, 0x1

    .line 430
    :goto_0
    monitor-exit p0

    return v17

    .line 204
    :cond_0
    if-nez v10, :cond_2

    .line 205
    const/16 v17, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/16 v17, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 213
    :cond_2
    const/4 v14, 0x0

    .local v14, "startIndex":I
    :goto_1
    if-ge v14, v10, :cond_22

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 215
    .local v13, "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 220
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 221
    const/16 v17, 0x1

    goto :goto_0

    .line 222
    :cond_3
    add-int/lit8 v17, p1, -0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 225
    move/from16 v11, p2

    .line 226
    .local v11, "newRangeEndId":I
    const/4 v12, 0x0

    .line 227
    .local v12, "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, v14, 0x1

    move/from16 v0, v17

    if-ge v0, v10, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    check-cast v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 229
    .restart local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_7

    .line 231
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    .line 233
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 240
    :cond_4
    :goto_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 241
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 242
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 245
    if-eqz v12, :cond_6

    .line 246
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 248
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 250
    :cond_5
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 237
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 255
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 257
    .end local v11    # "newRangeEndId":I
    .end local v12    # "nextRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_9
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    .line 261
    add-int/lit8 v17, p2, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 264
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 266
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 268
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 270
    :cond_b
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_d

    .line 273
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 274
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 275
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 276
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 278
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 282
    :cond_d
    add-int/lit8 v5, v14, 0x1

    .local v5, "endIndex":I
    :goto_3
    if-ge v5, v10, :cond_14

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 284
    .local v6, "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 287
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 288
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 289
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 291
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    add-int/lit8 v8, v14, 0x1

    .line 298
    .local v8, "joinIndex":I
    move v7, v8

    .local v7, "i":I
    :goto_4
    if-ge v7, v5, :cond_e

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 301
    .local v9, "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 304
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 306
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 308
    :cond_10
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_13

    .line 312
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 313
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 314
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 316
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 322
    add-int/lit8 v8, v14, 0x1

    .line 323
    .restart local v8    # "joinIndex":I
    move v7, v8

    .restart local v7    # "i":I
    :goto_5
    if-gt v7, v5, :cond_11

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 325
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 328
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_11
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 330
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 282
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 337
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 338
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    .line 339
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 341
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 347
    add-int/lit8 v8, v14, 0x1

    .line 348
    .restart local v8    # "joinIndex":I
    move v7, v8

    .restart local v7    # "i":I
    :goto_6
    if-ge v7, v10, :cond_15

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 351
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 354
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_15
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 356
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 359
    .end local v5    # "endIndex":I
    :cond_17
    add-int/lit8 v17, p1, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_21

    .line 361
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_18

    .line 364
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 365
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 369
    :cond_18
    move v5, v14

    .line 370
    .restart local v5    # "endIndex":I
    add-int/lit8 v15, v14, 0x1

    .local v15, "testIndex":I
    :goto_7
    if-ge v15, v10, :cond_19

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 372
    .local v16, "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a

    .line 379
    .end local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_19
    if-ne v5, v14, :cond_1c

    .line 383
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 384
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 385
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 386
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 375
    .restart local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1a
    move v5, v15

    .line 370
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 388
    .end local v16    # "testRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1b
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 392
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 397
    .restart local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1d

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mStartId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 400
    .restart local v11    # "newRangeEndId":I
    :goto_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 401
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1e

    iget v11, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 402
    :goto_9
    iput v11, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mEndId:I

    .line 404
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 410
    add-int/lit8 v8, v14, 0x1

    .line 411
    .restart local v8    # "joinIndex":I
    move v7, v8

    .restart local v7    # "i":I
    :goto_a
    if-gt v7, v5, :cond_1f

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 413
    .restart local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->mClients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    .end local v9    # "joinRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11    # "newRangeEndId":I
    :cond_1d
    move/from16 v11, p2

    .line 397
    goto :goto_8

    .restart local v11    # "newRangeEndId":I
    :cond_1e
    move/from16 v11, p2

    .line 401
    goto :goto_9

    .line 416
    .restart local v7    # "i":I
    .restart local v8    # "joinIndex":I
    :cond_1f
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 418
    .end local v7    # "i":I
    .end local v8    # "joinIndex":I
    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 213
    .end local v5    # "endIndex":I
    .end local v6    # "endRange":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11    # "newRangeEndId":I
    .end local v15    # "testIndex":I
    :cond_21
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 426
    .end local v13    # "range":Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_22
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 430
    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 194
    .end local v10    # "len":I
    .end local v14    # "startIndex":I
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method protected tryAddRanges(IIZ)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "endId"    # I
    .param p3, "selected"    # Z

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 624
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 626
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method

.method public updateRanges()Z
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 610
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 611
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method
