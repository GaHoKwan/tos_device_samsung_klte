.class public final Lcom/absolute/android/persistservice/ab;
.super Lcom/absolute/android/persistence/IABTPersistedFile$Stub;
.source "SourceFile"


# static fields
.field static final a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/absolute/android/persistservice/aa;

.field private d:Z

.field private e:Ljava/io/File;

.field private f:Ljava/io/FileInputStream;

.field private g:Ljava/io/FileOutputStream;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/aa;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ab;->d:Z

    .line 30
    iput-object v1, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    .line 31
    iput-object v1, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;

    .line 47
    iput-object p4, p0, Lcom/absolute/android/persistservice/ab;->c:Lcom/absolute/android/persistservice/aa;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    .line 57
    iput-boolean p3, p0, Lcom/absolute/android/persistservice/ab;->d:Z

    .line 59
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ab;->e:Ljava/io/File;

    .line 62
    iget-object v0, p0, Lcom/absolute/android/persistservice/ab;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ab;->e:Ljava/io/File;

    .line 74
    :cond_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->c:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException in close() for Persisted File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final delete()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/absolute/android/persistservice/ab;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public final exists()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/absolute/android/persistservice/ab;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ab;->close()V

    .line 213
    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    .line 214
    return-void
.end method

.method public final read([B)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ab;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException for read() from Persisted File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->c:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 150
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final skip(J)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    if-nez v2, :cond_0

    .line 166
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/ab;->f:Ljava/io/FileInputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 178
    :goto_0
    return-wide v0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FileNotFoundException for skip() on Persisted File: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    iget-object v4, p0, Lcom/absolute/android/persistservice/ab;->c:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v4, v3, v2}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    :catch_1
    move-exception v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException for skip() on Persisted File: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    iget-object v4, p0, Lcom/absolute/android/persistservice/ab;->c:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v4, v3, v2}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final write([B)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ab;->e:Ljava/io/File;

    iget-boolean v3, p0, Lcom/absolute/android/persistservice/ab;->d:Z

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 94
    array-length v0, p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :goto_0
    return v0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FileNotFoundException for write() to Persisted File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->c:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException for write() to Persisted File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->c:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final writeWithCount([BII)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ab;->e:Ljava/io/File;

    iget-boolean v3, p0, Lcom/absolute/android/persistservice/ab;->d:Z

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/ab;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :goto_0
    return p3

    .line 121
    :catch_0
    move-exception v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FileNotFoundException for write() to Persisted File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->c:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p3, v0

    .line 130
    goto :goto_0

    .line 126
    :catch_1
    move-exception v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException for write() to Persisted File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    iget-object v3, p0, Lcom/absolute/android/persistservice/ab;->c:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p3, v0

    .line 129
    goto :goto_0
.end method
