.class public Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
.super Ljava/lang/Object;
.source "EdmStorageProviderBase.java"


# static fields
.field private static final MIN_PERSONA_ID:I = 0x64

.field public static final SELECT_CLAUSE:Ljava/lang/String; = "#SelectClause#"

.field protected static final mTAG:Ljava/lang/String; = "EdmStorageProvider"


# instance fields
.field public mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EdmStorageProvider"

    const-string v3, "Failed to OPEN/CREATE the database"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addAdminLUID(II)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    const/4 v1, 0x1

    .line 700
    if-eqz p2, :cond_0

    if-gtz p1, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v1

    .line 705
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 706
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 707
    const-string v2, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    const-string v2, "adminID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    const-string v2, "ADMIN"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private convertAdminIdToLUID(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 667
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 668
    .local v3, "hasContainerId":Z
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 669
    .local v2, "hasAdminId":Z
    const/4 v1, -0x1

    .line 670
    .local v1, "containerId":I
    const/4 v0, -0x1

    .line 672
    .local v0, "adminId":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 674
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 675
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 676
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 677
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 678
    const-string v4, "adminUid"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 680
    :cond_0
    return-void
.end method

.method private formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;
    .locals 15
    .param p1, "selectionValues"    # Landroid/content/ContentValues;
    .param p2, "selectionBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 540
    const/4 v7, 0x0

    .line 542
    .local v7, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentValues;->size()I

    move-result v6

    .line 546
    .local v6, "numOfEntries":I
    if-lez v6, :cond_4

    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v9

    .line 549
    .local v9, "selectionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v11, "tempSelectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 552
    .local v3, "index":I
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 553
    .local v5, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 554
    .local v8, "selectionKey":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 555
    .local v10, "selectionValue":Ljava/lang/String;
    const-string v13, "#SelectClause#"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 556
    .local v4, "isSelectClause":Z
    const-string v1, ""

    .line 560
    .local v1, "extraTag":Ljava/lang/String;
    if-nez v4, :cond_0

    const-string v13, "="

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 562
    const-string v1, "=?"

    .line 566
    :cond_0
    if-nez v3, :cond_2

    .line 567
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :goto_1
    if-nez v4, :cond_1

    .line 573
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 576
    goto :goto_0

    .line 569
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 578
    .end local v1    # "extraTag":Ljava/lang/String;
    .end local v4    # "isSelectClause":Z
    .end local v5    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "selectionKey":Ljava/lang/String;
    .end local v10    # "selectionValue":Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 579
    .local v12, "tempSelectionArgsSize":I
    if-lez v12, :cond_4

    .line 580
    new-array v13, v12, [Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    check-cast v7, [Ljava/lang/String;

    .line 585
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v6    # "numOfEntries":I
    .end local v9    # "selectionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v11    # "tempSelectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "tempSelectionArgsSize":I
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    return-object v7
.end method

.method public static getAdminLUIDWhereIn(II)Ljava/lang/String;
    .locals 2
    .param p0, "containerId"    # I
    .param p1, "userId"    # I

    .prologue
    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 637
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "adminUid IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereInArgs(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAdminLUIDWhereInArgs(II)Ljava/lang/String;
    .locals 3
    .param p0, "containerId"    # I
    .param p1, "userId"    # I

    .prologue
    .line 683
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 684
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid container id!!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_0
    const/16 v1, 0x64

    if-lt p0, v1, :cond_1

    .line 688
    const/4 p0, 0x0

    .line 691
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT adminUid FROM ADMIN WHERE containerID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "userID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAdminUidFromLUID(J)I
    .locals 1
    .param p0, "adminLUID"    # J

    .prologue
    .line 613
    long-to-int v0, p0

    return v0
.end method

.method public static getContainerIdFromLUID(J)I
    .locals 2
    .param p0, "adminLUID"    # J

    .prologue
    .line 623
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private parseContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 645
    if-nez p1, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 651
    const-string v2, "containerID"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    const-string v2, "containerID"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 654
    .local v0, "containerId":I
    const-string v2, "containerID"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, "userId":I
    const-string/jumbo v2, "userID"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 658
    const-string/jumbo v2, "userID"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 659
    const-string/jumbo v2, "userID"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 662
    :cond_2
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#SelectClause#"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static translateToAdminLUID(II)J
    .locals 4
    .param p0, "adminId"    # I
    .param p1, "containerId"    # I

    .prologue
    .line 597
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 600
    :cond_0
    int-to-long v0, p0

    .line 603
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addAdmin(ILjava/lang/String;ZI)Z
    .locals 5
    .param p1, "iUId"    # I
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "bCanRemove"    # Z
    .param p4, "containerId"    # I

    .prologue
    .line 1118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1119
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1120
    const-string v1, "adminName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v1, "canRemove"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1123
    const-string v1, "ADMIN_INFO"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1124
    invoke-direct {p0, p4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addAdminLUID(II)Z

    .line 1125
    const/4 v1, 0x1

    .line 1128
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addContainer(II)Z
    .locals 6
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 1181
    const/4 v0, 0x0

    .line 1182
    .local v0, "result":Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1183
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1184
    const-string v2, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1186
    const-string v2, "CONTAINER"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1187
    if-eqz p2, :cond_1

    .line 1188
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addAdminLUID(II)Z

    move-result v0

    .line 1194
    :cond_0
    :goto_0
    return v0

    .line 1190
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addMUMContainer(II)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 1198
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1199
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1200
    const-string v1, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1202
    const-string v1, "MUMCONTAINER"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1203
    const/4 v1, 0x1

    .line 1206
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addorUpdateAdmin(ILjava/lang/String;ZI)Z
    .locals 7
    .param p1, "iUId"    # I
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "bCanRemove"    # Z
    .param p4, "containerId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1140
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1141
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "adminName"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v3, "canRemove"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1144
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1145
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1147
    const-string v3, "ADMIN_INFO"

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1159
    :goto_0
    return v2

    .line 1152
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1154
    const-string v3, "ADMIN_INFO"

    invoke-virtual {p0, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1155
    invoke-direct {p0, p4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addAdminLUID(II)Z

    goto :goto_0

    .line 1159
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canRemoveAdmin(I)Z
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1726
    const/4 v1, 0x1

    .line 1728
    .local v1, "result":Z
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "ADMIN_INFO"

    const-string v4, "canRemove"

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1734
    :goto_0
    return v1

    .line 1730
    :catch_0
    move-exception v0

    .line 1732
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EdmStorageProvider"

    const-string v3, "Admin not in database, something went wrong"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v3, "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "selection":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 471
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4

    .line 469
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "selection":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;

    .prologue
    .line 1381
    const/4 v1, 0x0

    .line 1383
    .local v1, "selectionValues":Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 1385
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1387
    .restart local v1    # "selectionValues":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 1388
    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1392
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "policy"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1252
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1253
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v1, "adminUid"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public getAdminLUidList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1685
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1686
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid!=?"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1687
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "ADMIN"

    const-string v3, "adminUid"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getAdminLUidListAsUser(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1695
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1696
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid!=?"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1697
    const-string/jumbo v1, "userID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1698
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "ADMIN"

    const-string v3, "adminUid"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getAdminUidList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1664
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1665
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid!=?"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1666
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "ADMIN_INFO"

    const-string v3, "adminUid"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getAdminUidListAsUser(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1674
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1675
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid!=?"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1676
    const-string/jumbo v1, "userID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1677
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "ADMIN"

    const-string v3, "adminUid"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)[B
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, "result":[B
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 256
    .local v0, "blobList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 257
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":[B
    check-cast v1, [B

    .line 259
    .restart local v1    # "result":[B
    :cond_0
    return-object v1
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "fieldValue"    # Ljava/lang/String;
    .param p4, "fieldResult"    # Ljava/lang/String;

    .prologue
    .line 1612
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1613
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)[B

    move-result-object v1

    return-object v1
.end method

.method public getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v4

    .line 275
    .local v0, "columns":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 277
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 279
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    return-object v2
.end method

.method public getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 931
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 932
    .local v2, "selectionValues":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 934
    const/4 v1, 0x0

    .line 936
    .local v1, "result":Z
    invoke-virtual {p0, p3, p4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 939
    .local v0, "booleanList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 940
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 945
    return v1

    .line 942
    :cond_0
    new-instance v3, Lcom/android/server/enterprise/storage/SettingNotFoundException;

    const-string v4, "Admin data is null"

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "result":Z
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "booleanList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 105
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 109
    return v1

    .line 107
    :cond_0
    new-instance v2, Lcom/android/server/enterprise/storage/SettingNotFoundException;

    const-string v3, "Admin data is null"

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getBooleanList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 956
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    new-array v0, v4, [Ljava/lang/String;

    aput-object p2, v0, v5

    .line 125
    .local v0, "columns":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 127
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 129
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    move v3, v5

    .line 131
    goto :goto_1

    .line 135
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_3
    return-object v2
.end method

.method public getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 968
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 969
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#SelectClause#"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getComponentNameForUid(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1639
    const/4 v1, 0x0

    const-string v2, "ADMIN_INFO"

    const-string v3, "adminName"

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1641
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1642
    const/4 v1, 0x0

    .line 1644
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method public getContainerIdList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1706
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1707
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "containerID!=?"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1708
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "CONTAINER"

    const-string v3, "containerID"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getContainerIdList(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1716
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1717
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid=?"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1718
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "CONTAINER"

    const-string v3, "containerID"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getContainerOwnerUid(I)I
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 1232
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1233
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1234
    const-string v1, "CONTAINER"

    const-string v2, "adminUid"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 422
    const/4 v0, -0x1

    .line 423
    .local v0, "cnt":I
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 425
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 426
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 427
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 429
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 430
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 431
    const-string v3, "EdmStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCount("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 441
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v0

    .line 433
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    .line 437
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->parseContentValues(Landroid/content/ContentValues;)V

    .line 438
    const-string v3, "COUNT(*)"

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0
.end method

.method public getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 406
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v8, "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, p3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "selection":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    move-object v7, p4

    .line 410
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "selection":Ljava/lang/String;
    :cond_0
    move-object v3, v5

    .line 408
    goto :goto_0
.end method

.method public getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "adminId"    # I
    .param p3, "containerId"    # I
    .param p4, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1434
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1435
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1436
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getCursorByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "adminId"    # I
    .param p3, "containerId"    # I
    .param p4, "field"    # Ljava/lang/String;
    .param p5, "fieldValue"    # Ljava/lang/String;
    .param p6, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1422
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1423
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1424
    if-eqz p5, :cond_0

    .line 1425
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p6, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "ReturnColumns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1324
    const/4 v1, 0x0

    .line 1326
    .local v1, "selectionValues":Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 1328
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1330
    .restart local v1    # "selectionValues":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 1331
    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1335
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1762
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1763
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const-string v1, "generic"

    const-string/jumbo v2, "value"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGenericValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1306
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1307
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    const-string/jumbo v1, "userID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1311
    const-string v1, "generic"

    const-string/jumbo v2, "value"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInt(IILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 861
    const/4 v1, -0x1

    .line 862
    .local v1, "result":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 863
    .local v2, "selectionValues":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 865
    invoke-virtual {p0, p3, p4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 868
    .local v0, "intList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 869
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 873
    return v1

    .line 871
    :cond_0
    new-instance v3, Lcom/android/server/enterprise/storage/SettingNotFoundException;

    const-string v4, "Admin data is null"

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 151
    const/4 v1, -0x1

    .line 153
    .local v1, "result":I
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, "intList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 157
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 159
    :cond_0
    return v1
.end method

.method public getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "adminId"    # I
    .param p3, "containerId"    # I
    .param p4, "field"    # Ljava/lang/String;
    .param p5, "fieldValue"    # Ljava/lang/String;
    .param p6, "fieldToReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1400
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1401
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1402
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p0, p1, p6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v4

    .line 175
    .local v0, "columns":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 177
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 179
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_2
    return-object v2
.end method

.method public getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 896
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 897
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#SelectClause#"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 201
    const-wide/16 v1, -0x1

    .line 203
    .local v1, "result":J
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "longList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 207
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 209
    :cond_0
    return-wide v1
.end method

.method public getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v4

    .line 225
    .local v0, "columns":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 227
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 229
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_2
    return-object v2
.end method

.method public getLongListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1518
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1519
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#SelectClause#"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getMUMContainerOwnerUid(I)I
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 1238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1239
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1240
    const-string v1, "MUMCONTAINER"

    const-string v2, "adminUid"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1652
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1653
    .local v0, "compName":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1654
    const/4 v1, 0x0

    .line 1656
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "policy"    # Ljava/lang/String;

    .prologue
    .line 741
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 742
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 743
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/lang/String;
    .param p4, "fieldValue"    # Ljava/lang/String;
    .param p5, "fieldResult"    # Ljava/lang/String;

    .prologue
    .line 1533
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1534
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#SelectClause#"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p0, p2, p5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 306
    .local v1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 307
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 309
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getStringByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "adminId"    # I
    .param p3, "containerId"    # I
    .param p4, "field"    # Ljava/lang/String;
    .param p5, "fieldValue"    # Ljava/lang/String;
    .param p6, "fieldToReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1411
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1412
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1413
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0, p1, p6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringList(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "returnColumns"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 758
    .local p4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v4

    .line 325
    .local v0, "columns":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 327
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 329
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_2
    return-object v2
.end method

.method public getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "returnColumns"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 773
    .local p4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v3, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p2, p6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#SelectClause#"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 778
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 779
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 780
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, p1, p3, v3, p5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method public getStringListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 807
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#SelectClause#"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 1625
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 1626
    .local v0, "columns":[Ljava/lang/String;
    aput-object p2, v0, v3

    .line 1627
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 1628
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1629
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1631
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getValues(IILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;

    .prologue
    .line 981
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 982
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 983
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 984
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 985
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 987
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    goto :goto_0
.end method

.method public getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 355
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_8

    .line 357
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 359
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 361
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 363
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 364
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 366
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 379
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 367
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "i":I
    :cond_3
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 368
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 369
    :cond_4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 370
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 373
    :cond_5
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 374
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 379
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i":I
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_8
    return-object v3
.end method

.method public getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1023
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->parseContentValues(Landroid/content/ContentValues;)V

    .line 1024
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1010
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1011
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#SelectClause#"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public handleFirmwareUpgrade()V
    .locals 3

    .prologue
    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EdmStorageProvider"

    const-string v2, "handleUpgrade EX:"

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 528
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 1559
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1560
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1561
    return-void
.end method

.method public insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 1045
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1046
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v3, "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "selection":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 491
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 498
    :goto_1
    return v5

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "selection":Ljava/lang/String;
    :cond_0
    move-object v1, v4

    .line 488
    goto :goto_0

    .line 496
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "selection":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 498
    invoke-virtual {v0, p1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    move v5, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "value"    # Z

    .prologue
    .line 910
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 911
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz p5, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p4, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    const/4 v2, 0x0

    .line 913
    .local v2, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v0

    .line 914
    .local v0, "adminLUID":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 915
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 916
    .restart local v2    # "selectionValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 918
    :cond_0
    invoke-virtual {p0, p3, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    return v4

    .line 911
    .end local v0    # "adminLUID":J
    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 1351
    const/4 v1, 0x0

    .line 1352
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 1354
    .local v2, "selectionValues":Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    if-eqz p3, :cond_0

    array-length v3, p3

    if-lez v3, :cond_0

    .line 1356
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1358
    .restart local v2    # "selectionValues":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 1359
    aget-object v3, p2, v0

    aget-object v4, p3, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1363
    .end local v0    # "i":I
    :cond_0
    if-nez v2, :cond_2

    .line 1364
    invoke-virtual {p0, p1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 1369
    :goto_1
    return v1

    .line 1364
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1366
    :cond_2
    invoke-virtual {p0, p1, p4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v1

    goto :goto_1
.end method

.method public putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "containerId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 1277
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1278
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v2, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1280
    const-string/jumbo v2, "userID"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1282
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1283
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    const-string v2, "generic"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    return v2
.end method

.method public putInt(IILjava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "value"    # I

    .prologue
    .line 820
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 821
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p4, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    const/4 v2, 0x0

    .line 823
    .local v2, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v0

    .line 824
    .local v0, "adminLUID":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 825
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 826
    .restart local v2    # "selectionValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 828
    :cond_0
    invoke-virtual {p0, p3, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    return v4
.end method

.method public putLong(IILjava/lang/String;Ljava/lang/String;J)Z
    .locals 6
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "value"    # J

    .prologue
    .line 840
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 841
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p4, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 842
    const/4 v2, 0x0

    .line 843
    .local v2, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v0

    .line 844
    .local v0, "adminLUID":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 845
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 846
    .restart local v2    # "selectionValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 848
    :cond_0
    invoke-virtual {p0, p3, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    return v4
.end method

.method public putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 722
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 723
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v2, 0x0

    .line 725
    .local v2, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v0

    .line 726
    .local v0, "adminLUID":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 727
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 728
    .restart local v2    # "selectionValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 730
    :cond_0
    invoke-virtual {p0, p3, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    return v4
.end method

.method public putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "api"    # Ljava/lang/String;
    .param p4, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1057
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1058
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1059
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1060
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x1

    .line 1096
    const/4 v0, 0x0

    .line 1098
    .local v0, "selectionValues":Landroid/content/ContentValues;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v2

    if-lez v2, :cond_1

    .line 1106
    :cond_0
    :goto_0
    return v1

    .line 1102
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1106
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 6
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "cvUpdateValues"    # Landroid/content/ContentValues;
    .param p3, "cvWhereValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1071
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v0, v1

    .line 1086
    :cond_1
    :goto_0
    return v0

    .line 1076
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1077
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1079
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1081
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 1086
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "adminId"    # I
    .param p3, "containerId"    # I
    .param p4, "sColumn"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1444
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1445
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1446
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-direct {p0, p6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1448
    invoke-virtual {p0, p1, p6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 1034
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1035
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;

    .prologue
    .line 1548
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAdminFromDatabase(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    .line 1168
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1169
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    const-string v2, "canRemove"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1171
    const-string v2, "ADMIN_INFO"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeByAdmin(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "adminId"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 1475
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1476
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1477
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "adminId"    # I
    .param p3, "containerId"    # I
    .param p4, "sColumn"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 1461
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1462
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1463
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeByFields(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 1
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1488
    .local p3, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result v0

    return v0
.end method

.method public removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I
    .locals 6
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1496
    .local p3, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1498
    .local v3, "selectionValues":Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1500
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1501
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1502
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1505
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-static {p2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#SelectClause#"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    return v4
.end method

.method public removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1573
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1574
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_2

    .line 1578
    const-string v3, "1"

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1578
    goto :goto_0

    .line 1580
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public removeContainer(I)Z
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 1215
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1216
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1217
    const-string v1, "CONTAINER"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeMUMContainer(I)Z
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 1221
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1222
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1223
    const-string v1, "MUMCONTAINER"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1745
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1746
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1749
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string v2, "generic"

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    return v2
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selectionValues"    # Landroid/content/ContentValues;

    .prologue
    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v3, "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->formatContentValues(Landroid/content/ContentValues;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "selection":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 516
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4

    .line 514
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "selection":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .locals 6
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1589
    .local p3, "whereParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1591
    .local v3, "selectionValues":Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1593
    new-instance v3, Landroid/content/ContentValues;

    .end local v3    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1595
    .restart local v3    # "selectionValues":Landroid/content/ContentValues;
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1596
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1597
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1600
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v4

    return v4
.end method
