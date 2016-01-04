.class public final Landroid/provider/Settings$GpuPowerStretchValues;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpuPowerStretchValues"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;
    }
.end annotation


# static fields
.field public static final AUTO:I = 0x1

.field private static final AUTO_VALUE:Ljava/lang/String; = "autovalue"

.field public static final MANUAL:I = 0x0

.field private static final MANUAL_VALUE:Ljava/lang/String; = "manualvalue"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final PKGNAME:Ljava/lang/String; = "packagename"

.field private static final TAG:Ljava/lang/String; = "GpuPowerStretchValues"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValues(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;)Z
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "aParams"    # Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;

    .prologue
    .line 11694
    if-nez p1, :cond_1

    .line 11695
    const/4 v2, 0x0

    .line 11714
    :cond_0
    :goto_0
    return v2

    .line 11697
    :cond_1
    const/4 v1, 0x0

    .line 11698
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 11699
    .local v2, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://settings/powersaving_appsetting/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 11701
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 11703
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 11704
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11705
    const-string/jumbo v3, "mode"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;->mMode:I

    .line 11706
    const-string v3, "autovalue"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;->mAutoValue:I

    .line 11707
    const-string/jumbo v3, "manualvalue"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p2, Landroid/provider/Settings$GpuPowerStretchValues$GpuPowerStretchParams;->mManualValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11708
    const/4 v2, 0x1

    .line 11711
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static putValues(Landroid/content/ContentResolver;Ljava/lang/String;III)Z
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "autovalue"    # I
    .param p4, "manualvalue"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 11827
    if-nez p1, :cond_1

    move v4, v6

    .line 11865
    :cond_0
    :goto_0
    return v4

    .line 11831
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 11832
    .local v5, "values":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 11833
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 11834
    .local v4, "ret":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://settings/powersaving_appsetting/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 11836
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 11838
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 11839
    const-string v6, "content://settings/powersaving_appsetting/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 11840
    .local v1, "CONTENT_URI2":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 11841
    const-string/jumbo v6, "packagename"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11842
    const-string/jumbo v6, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11843
    const-string v6, "autovalue"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11844
    const-string/jumbo v6, "manualvalue"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11845
    invoke-virtual {p0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11846
    const/4 v4, 0x1

    .line 11862
    .end local v1    # "CONTENT_URI2":Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 11847
    :cond_3
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 11848
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11849
    const-string/jumbo v7, "mode"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne p2, v7, :cond_4

    const-string v7, "autovalue"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne p3, v7, :cond_4

    const-string/jumbo v7, "manualvalue"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eq p4, v7, :cond_6

    .line 11852
    .local v2, "changed":Z
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 11853
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 11854
    const-string/jumbo v6, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11855
    const-string v6, "autovalue"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11856
    const-string/jumbo v6, "manualvalue"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11857
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11859
    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .end local v2    # "changed":Z
    :cond_6
    move v2, v6

    .line 11849
    goto :goto_2

    .line 11862
    :catchall_0
    move-exception v6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method public static setManualModeValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "manualvalue"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 11725
    if-nez p1, :cond_1

    move v8, v10

    .line 11764
    :cond_0
    :goto_0
    return v8

    .line 11728
    :cond_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 11729
    .local v9, "values":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 11730
    .local v5, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 11731
    .local v8, "ret":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://settings/powersaving_appsetting/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 11733
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 11735
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_3

    .line 11736
    const-string/jumbo v10, "ro.gpupowerstretch.sweetspot"

    const/16 v11, 0x63

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 11737
    .local v2, "autoValue":I
    const-string v10, "content://settings/powersaving_appsetting/"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 11738
    .local v1, "CONTENT_URI2":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 11739
    const-string/jumbo v10, "packagename"

    invoke-virtual {v9, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11740
    const-string/jumbo v10, "mode"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11741
    const-string v10, "autovalue"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11742
    const-string/jumbo v10, "manualvalue"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11743
    invoke-virtual {p0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11744
    const/4 v8, 0x1

    .line 11761
    .end local v1    # "CONTENT_URI2":Landroid/net/Uri;
    .end local v2    # "autoValue":I
    :cond_2
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 11745
    :cond_3
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ne v11, v4, :cond_2

    .line 11746
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11747
    const/4 v7, 0x0

    .line 11748
    .local v7, "mode":I
    const-string v11, "autovalue"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 11749
    .local v3, "autovalue":I
    const-string/jumbo v11, "manualvalue"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 11750
    .local v6, "existmanualvalue":I
    if-eq p2, v6, :cond_5

    .line 11751
    .local v4, "changed":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 11752
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 11753
    const-string/jumbo v10, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11754
    const-string v10, "autovalue"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11755
    const-string/jumbo v10, "manualvalue"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11756
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v0, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11758
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .end local v4    # "changed":Z
    :cond_5
    move v4, v10

    .line 11750
    goto :goto_2

    .line 11761
    .end local v3    # "autovalue":I
    .end local v6    # "existmanualvalue":I
    .end local v7    # "mode":I
    :catchall_0
    move-exception v10

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v10
.end method

.method public static setMode(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "aMode"    # I

    .prologue
    const/4 v9, 0x1

    .line 11775
    if-nez p1, :cond_1

    .line 11776
    const/4 v7, -0x1

    .line 11814
    :cond_0
    :goto_0
    return v7

    .line 11778
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 11779
    .local v8, "values":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 11780
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 11781
    .local v7, "ret":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://settings/powersaving_appsetting/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 11783
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 11785
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_3

    .line 11786
    const-string/jumbo v9, "ro.gpupowerstretch.sweetspot"

    const/16 v10, 0x63

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 11787
    const-string v9, "content://settings/powersaving_appsetting/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 11788
    .local v1, "CONTENT_URI2":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 11789
    const-string/jumbo v9, "packagename"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11790
    const-string/jumbo v9, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11791
    const-string v9, "autovalue"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11792
    const-string/jumbo v9, "manualvalue"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11793
    invoke-virtual {p0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11811
    .end local v1    # "CONTENT_URI2":Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 11795
    :cond_3
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ne v10, v9, :cond_2

    .line 11796
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11797
    const-string/jumbo v10, "mode"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 11798
    .local v6, "mode":I
    const-string v10, "autovalue"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 11799
    .local v2, "autovalue":I
    const-string/jumbo v10, "manualvalue"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 11800
    .local v5, "existmanualvalue":I
    if-eq v6, p2, :cond_5

    move v3, v9

    .line 11801
    .local v3, "changed":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 11802
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 11803
    const-string/jumbo v10, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11804
    const-string v10, "autovalue"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11805
    const-string/jumbo v10, "manualvalue"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11806
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v0, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11808
    :cond_4
    if-ne p2, v9, :cond_6

    move v7, v2

    :goto_3
    goto :goto_1

    .line 11800
    .end local v3    # "changed":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .restart local v3    # "changed":Z
    :cond_6
    move v7, v5

    .line 11808
    goto :goto_3

    .line 11811
    .end local v2    # "autovalue":I
    .end local v3    # "changed":Z
    .end local v5    # "existmanualvalue":I
    .end local v6    # "mode":I
    :catchall_0
    move-exception v9

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v9
.end method
