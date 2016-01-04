.class public Lcom/absolute/android/persistservice/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:I = 0x4

.field protected static final b:I = 0x3c

.field protected static final c:Ljava/lang/String;

.field static final synthetic d:Z

.field private static final e:Ljava/lang/String; = "APS"

.field private static final f:Z = false

.field private static final g:Z = true

.field private static final h:Z = false

.field private static final i:Ljava/lang/String; = ".log"

.field private static final j:Ljava/lang/String; = " "

.field private static final k:Ljava/lang/String; = "/"

.field private static final l:Ljava/lang/String; = ":"


# instance fields
.field private m:Lcom/absolute/android/persistservice/z;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/io/File;

.field private s:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/aa;->d:Z

    .line 61
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/persistservice/aa;->c:Ljava/lang/String;

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/ad;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/absolute/android/persistservice/aa;->o:I

    .line 70
    const/16 v0, 0x3c

    iput v0, p0, Lcom/absolute/android/persistservice/aa;->p:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    .line 106
    iput-object p2, p0, Lcom/absolute/android/persistservice/aa;->n:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/absolute/android/persistservice/z;

    invoke-direct {v0, p1, p0, p2}, Lcom/absolute/android/persistservice/z;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;Z)V

    .line 109
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/absolute/android/persistservice/aa;->a(Lcom/absolute/android/persistservice/z;Z)V

    .line 110
    return-void
.end method

.method private static a(C)I
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 441
    .line 443
    sparse-switch p0, :sswitch_data_0

    .line 460
    :goto_0
    :sswitch_0
    return v0

    .line 445
    :sswitch_1
    const/4 v0, 0x2

    .line 446
    goto :goto_0

    .line 451
    :sswitch_2
    const/4 v0, 0x4

    .line 452
    goto :goto_0

    .line 454
    :sswitch_3
    const/4 v0, 0x5

    .line 455
    goto :goto_0

    .line 457
    :sswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x45 -> :sswitch_4
        0x49 -> :sswitch_2
        0x56 -> :sswitch_1
        0x57 -> :sswitch_3
    .end sparse-switch
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 524
    const-string v0, ""

    .line 525
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 526
    sget-boolean v2, Lcom/absolute/android/persistservice/aa;->d:Z

    if-nez v2, :cond_0

    array-length v2, v1

    if-gt v2, v4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 527
    :cond_0
    array-length v2, v1

    if-le v2, v4, :cond_2

    .line 528
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 529
    if-nez p0, :cond_1

    .line 530
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_2
    return-object v0
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistence/LogEntry;)V
    .locals 9

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/absolute/android/persistservice/aa;->p:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 476
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 478
    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getTimeStampUTC()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/dateutils/DateUtils;->encodeDateAsUTC(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getSeverity()I

    move-result v1

    const/16 v0, 0x20

    packed-switch v1, :pswitch_data_0

    move v1, v0

    .line 480
    :goto_1
    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/absolute/android/persistservice/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 486
    array-length v6, v5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 490
    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    sget-object v7, Lcom/absolute/android/persistservice/aa;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 479
    :pswitch_0
    const/16 v0, 0x56

    move v1, v0

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x44

    move v1, v0

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x49

    move v1, v0

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x57

    move v1, v0

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x45

    move v1, v0

    goto :goto_1

    .line 497
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/aa;->f(Ljava/lang/String;)V

    .line 501
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 502
    new-instance v2, Ljava/io/BufferedWriter;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 503
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    :try_start_2
    const-string v1, "APS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Persistence Service Logger writeToLogFile failed for entry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " . Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Re-initializing log."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/aa;->a()V

    .line 511
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->m:Lcom/absolute/android/persistservice/z;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/absolute/android/persistservice/aa;->a(Lcom/absolute/android/persistservice/z;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 479
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/z;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 207
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/absolute/android/persistservice/aa;->m:Lcom/absolute/android/persistservice/z;

    .line 208
    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->m:Lcom/absolute/android/persistservice/z;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/z;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistservice/aa;->q:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->m:Lcom/absolute/android/persistservice/z;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/z;->a()I

    move-result v1

    iput v1, p0, Lcom/absolute/android/persistservice/aa;->o:I

    .line 210
    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->m:Lcom/absolute/android/persistservice/z;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/z;->b()I

    move-result v1

    iput v1, p0, Lcom/absolute/android/persistservice/aa;->p:I

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/absolute/android/persistservice/aa;->o:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    .line 214
    :goto_0
    iget v1, p0, Lcom/absolute/android/persistservice/aa;->o:I

    if-ge v0, v1, :cond_1

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/absolute/android/persistservice/aa;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 218
    iget-object v3, p0, Lcom/absolute/android/persistservice/aa;->q:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iput-object v2, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    if-nez v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    .line 225
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/aa;->q:Ljava/lang/String;

    .line 228
    if-nez p2, :cond_2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Persistence Service Logger - initializing current log file to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->m:Lcom/absolute/android/persistservice/z;

    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/z;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_1
    const-string v1, "APS"

    const-string v2, "Persistence Service Logger initialization failed, logging to logcat only. Got exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(I)C
    .locals 1

    .prologue
    .line 410
    const/16 v0, 0x20

    .line 412
    packed-switch p0, :pswitch_data_0

    .line 429
    :goto_0
    return v0

    .line 414
    :pswitch_0
    const/16 v0, 0x56

    .line 415
    goto :goto_0

    .line 417
    :pswitch_1
    const/16 v0, 0x44

    .line 418
    goto :goto_0

    .line 420
    :pswitch_2
    const/16 v0, 0x49

    .line 421
    goto :goto_0

    .line 423
    :pswitch_3
    const/16 v0, 0x57

    .line 424
    goto :goto_0

    .line 426
    :pswitch_4
    const/16 v0, 0x45

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static c(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 589
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 593
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 595
    :cond_0
    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/absolute/android/persistservice/aa;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/aa;->a(Lcom/absolute/android/persistence/LogEntry;)V

    .line 313
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 544
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iget v2, p0, Lcom/absolute/android/persistservice/aa;->p:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 546
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 547
    sget-boolean v1, Lcom/absolute/android/persistservice/aa;->d:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 549
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 550
    iget v1, p0, Lcom/absolute/android/persistservice/aa;->o:I

    if-lt v0, v1, :cond_4

    .line 551
    const/4 v0, 0x0

    move v1, v0

    .line 555
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/absolute/android/persistservice/aa;->c(Ljava/io/File;)V

    .line 558
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/absolute/android/persistservice/aa;->o:I

    if-le v0, v2, :cond_1

    .line 559
    iget v0, p0, Lcom/absolute/android/persistservice/aa;->o:I

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/absolute/android/persistservice/aa;->c(Ljava/io/File;)V

    .line 559
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 566
    if-nez v0, :cond_2

    .line 567
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/aa;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 572
    :cond_2
    iput-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    .line 573
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/aa;->q:Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->m:Lcom/absolute/android/persistservice/z;

    iget-object v1, p0, Lcom/absolute/android/persistservice/aa;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/z;->a(Ljava/lang/String;)V

    .line 581
    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/absolute/android/persistence/IABTLogIterator;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/absolute/android/persistservice/y;

    invoke-direct {v0, p1, p0}, Lcom/absolute/android/persistservice/y;-><init>(ILcom/absolute/android/persistservice/aa;)V

    return-object v0
.end method

.method protected final a(Ljava/lang/String;I)Lcom/absolute/android/persistence/LogEntry;
    .locals 6

    .prologue
    const/4 v0, 0x3

    .line 374
    const/4 v1, 0x0

    .line 377
    :try_start_0
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 378
    const-string v2, "/"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 379
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 380
    sparse-switch v2, :sswitch_data_0

    move v2, v0

    .line 383
    :goto_0
    if-lt v2, p2, :cond_0

    .line 385
    const/4 v0, 0x0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0}, Lcom/absolute/android/dateutils/DateUtils;->decodeUTCDateAsCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 388
    const-string v0, ":"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 389
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 391
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 393
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/absolute/android/persistence/LogEntry;-><init>(Ljava/util/Calendar;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_1
    return-object v0

    .line 380
    :sswitch_0
    const/4 v0, 0x2

    move v2, v0

    goto :goto_0

    :sswitch_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    move v2, v0

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x5

    move v2, v0

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x6

    move v2, v0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception parsing log file line: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x45 -> :sswitch_4
        0x49 -> :sswitch_2
        0x56 -> :sswitch_0
        0x57 -> :sswitch_3
    .end sparse-switch
.end method

.method protected final declared-synchronized a(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    .line 326
    monitor-enter p0

    const/4 v1, 0x0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;

    if-eq p1, v0, :cond_2

    .line 330
    if-nez p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 337
    iget v2, p0, Lcom/absolute/android/persistservice/aa;->o:I

    if-lt v0, v2, :cond_1

    .line 338
    const/4 v0, 0x0

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :goto_0
    monitor-exit p0

    return-object v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    :try_start_2
    const-string v2, "Persistence Service Logger getNextOldestLogFile failed. Got exception: "

    invoke-virtual {p0, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 144
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/absolute/android/persistservice/aa;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(II)V
    .locals 2

    .prologue
    .line 154
    monitor-enter p0

    if-gtz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NumLogs argument must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_0
    if-gez p2, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MaxSizeKB argument must >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    iget v0, p0, Lcom/absolute/android/persistservice/aa;->o:I

    if-eq p1, v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->s:Ljava/util/ArrayList;

    iget v1, p0, Lcom/absolute/android/persistservice/aa;->o:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 165
    iput p1, p0, Lcom/absolute/android/persistservice/aa;->o:I

    .line 166
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->m:Lcom/absolute/android/persistservice/z;

    iget v1, p0, Lcom/absolute/android/persistservice/aa;->o:I

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/z;->a(I)V

    .line 169
    :cond_2
    iget v0, p0, Lcom/absolute/android/persistservice/aa;->p:I

    if-eq p2, v0, :cond_4

    .line 174
    if-nez p2, :cond_3

    .line 175
    const-string v0, "APS"

    const-string v1, "Maximum Log Size has been set to 0. This will turn off Peristence Service logging to file"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_3
    iput p2, p0, Lcom/absolute/android/persistservice/aa;->p:I

    .line 179
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->m:Lcom/absolute/android/persistservice/z;

    iget v1, p0, Lcom/absolute/android/persistservice/aa;->p:I

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/z;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 127
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid severity parameter for logMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_1
    if-nez p3, :cond_2

    .line 130
    :try_start_1
    const-string p3, ""

    .line 132
    :cond_2
    if-nez p2, :cond_3

    .line 133
    const-string p2, ""

    .line 135
    :cond_3
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/aa;->a(Lcom/absolute/android/persistence/LogEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    monitor-exit p0

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 257
    if-eqz p2, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    :cond_0
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/absolute/android/persistservice/aa;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/aa;->a(Lcom/absolute/android/persistence/LogEntry;)V

    .line 265
    return-void
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/absolute/android/persistservice/aa;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 276
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/absolute/android/persistservice/aa;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/aa;->a(Lcom/absolute/android/persistence/LogEntry;)V

    .line 277
    return-void
.end method

.method protected final declared-synchronized b(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/aa;->r:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()I
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/absolute/android/persistservice/aa;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 288
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/absolute/android/persistservice/aa;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/aa;->a(Lcom/absolute/android/persistence/LogEntry;)V

    .line 289
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/absolute/android/persistservice/aa;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/aa;->a(Lcom/absolute/android/persistence/LogEntry;)V

    .line 301
    return-void
.end method
