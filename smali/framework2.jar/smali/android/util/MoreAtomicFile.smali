.class public Landroid/util/MoreAtomicFile;
.super Landroid/util/AtomicFile;
.source "MoreAtomicFile.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "MoreAtomicFile"


# instance fields
.field private final mMoreBackupName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "baseName"    # Ljava/io/File;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 50
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mbak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    .line 51
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/util/AtomicFile;->delete()V

    .line 58
    iget-object v0, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 59
    return-void
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .locals 2
    .param p1, "str"    # Ljava/io/FileOutputStream;

    .prologue
    .line 104
    iget-object v0, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 105
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 106
    invoke-super {p0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 107
    return-void
.end method

.method isDamaged(Ljava/io/File;)Z
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, "raf_xmltest":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 161
    .local v2, "isDamaged":Z
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .local v4, "raf_xmltest":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0xe

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    .line 163
    const/4 v2, 0x1

    .line 165
    const-string v5, "MoreAtomicFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is too small, rename it to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".crt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Landroid/util/MoreAtomicFile;->saveCorruptedFile()V

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    :cond_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v3, v4

    .line 183
    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_0
    return v2

    .line 181
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .local v1, "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v4

    .line 182
    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 170
    .end local v1    # "ie":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x1

    .line 173
    :try_start_3
    const-string v5, "MoreAtomicFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during check if it is damaged, rename it to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".crt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Landroid/util/MoreAtomicFile;->saveCorruptedFile()V

    .line 176
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 181
    :catch_2
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 180
    :goto_2
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 181
    :cond_3
    :goto_3
    throw v5

    :catch_3
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 179
    .end local v1    # "ie":Ljava/io/IOException;
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 170
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public openRead()Ljava/io/FileInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "MoreAtomicFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "only more backup, rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 130
    :cond_0
    invoke-super {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public openXmlRead()Ljava/io/FileInputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/MoreAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 139
    .local v1, "isBaseAvailable":Z
    :goto_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/MoreAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 140
    .local v0, "isBackupAvailable":Z
    :goto_1
    iget-object v5, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0, v5}, Landroid/util/MoreAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    .line 142
    .local v2, "isMoreBackupAvailable":Z
    :goto_2
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 144
    const-string v3, "MoreAtomicFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "only more backup, rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v3, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 149
    :cond_0
    invoke-super {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    return-object v3

    .end local v0    # "isBackupAvailable":Z
    .end local v1    # "isBaseAvailable":Z
    .end local v2    # "isMoreBackupAvailable":Z
    :cond_1
    move v1, v4

    .line 138
    goto :goto_0

    .restart local v1    # "isBaseAvailable":Z
    :cond_2
    move v0, v4

    .line 139
    goto :goto_1

    .restart local v0    # "isBackupAvailable":Z
    :cond_3
    move v2, v4

    .line 140
    goto :goto_2
.end method

.method public saveCorruptedFile()V
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".crt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 190
    :cond_0
    return-void
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "MoreAtomicFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "only more backup, rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public startXmlWrite()Ljava/io/FileOutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/MoreAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 85
    .local v1, "isBaseAvailable":Z
    :goto_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/MoreAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 86
    .local v0, "isBackupAvailable":Z
    :goto_1
    iget-object v5, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0, v5}, Landroid/util/MoreAtomicFile;->isDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    .line 88
    .local v2, "isMoreBackupAvailable":Z
    :goto_2
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 90
    const-string v3, "MoreAtomicFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "only more backup, rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBackupFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Landroid/util/MoreAtomicFile;->mMoreBackupName:Ljava/io/File;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 95
    :cond_0
    invoke-super {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    return-object v3

    .end local v0    # "isBackupAvailable":Z
    .end local v1    # "isBaseAvailable":Z
    .end local v2    # "isMoreBackupAvailable":Z
    :cond_1
    move v1, v4

    .line 84
    goto :goto_0

    .restart local v1    # "isBaseAvailable":Z
    :cond_2
    move v0, v4

    .line 85
    goto :goto_1

    .restart local v0    # "isBackupAvailable":Z
    :cond_3
    move v2, v4

    .line 86
    goto :goto_2
.end method
