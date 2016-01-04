.class final Lcom/absolute/android/persistservice/v;
.super Lcom/absolute/android/persistservice/ai;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static final h:Ljava/lang/String; = "abt-persistence-watchdog"


# instance fields
.field final synthetic b:Lcom/absolute/android/persistservice/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 455
    const-class v0, Lcom/absolute/android/persistservice/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/v;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/absolute/android/persistservice/q;Landroid/content/Context;Lcom/absolute/android/persistservice/aa;)V
    .locals 1

    .prologue
    .line 465
    iput-object p1, p0, Lcom/absolute/android/persistservice/v;->b:Lcom/absolute/android/persistservice/q;

    .line 466
    const-string v0, "abt-persistence-watchdog"

    invoke-direct {p0, p2, p3, v0}, Lcom/absolute/android/persistservice/ai;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 492
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    .line 493
    return-object v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/v;Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    .line 479
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/v;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->e()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 516
    sget-boolean v1, Lcom/absolute/android/persistservice/v;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 517
    :cond_0
    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    .line 520
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    .line 524
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/v;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->c()V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->f()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 534
    sget-boolean v1, Lcom/absolute/android/persistservice/v;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 535
    :cond_0
    if-eqz v0, :cond_2

    .line 536
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    :cond_1
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    .line 538
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->e()V

    .line 539
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    .line 543
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/v;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    :cond_1
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 553
    sget-boolean v1, Lcom/absolute/android/persistservice/v;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 554
    :cond_0
    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->c()V

    .line 556
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->f()V

    .line 557
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    .line 560
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/v;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->h()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    :cond_1
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 569
    sget-boolean v1, Lcom/absolute/android/persistservice/v;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 570
    :cond_0
    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->h()V

    .line 572
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z

    .line 575
    :cond_1
    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 0

    .prologue
    .line 583
    return-void
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 589
    new-instance v1, Lcom/absolute/android/persistservice/v;

    iget-object v2, p0, Lcom/absolute/android/persistservice/v;->b:Lcom/absolute/android/persistservice/q;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ai;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/aa;

    invoke-direct {v1, v2, v3, v4}, Lcom/absolute/android/persistservice/v;-><init>(Lcom/absolute/android/persistservice/q;Landroid/content/Context;Lcom/absolute/android/persistservice/aa;)V

    .line 591
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/ai;->i(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistservice/ai;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 594
    :goto_0
    return v0

    .line 592
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v1

    goto :goto_0
.end method
