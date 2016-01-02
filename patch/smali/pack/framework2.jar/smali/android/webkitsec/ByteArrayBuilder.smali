.class Landroid/webkitsec/ByteArrayBuilder;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/ByteArrayBuilder$Chunk;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x2000

.field private static final sPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/webkitsec/ByteArrayBuilder$Chunk;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/webkitsec/ByteArrayBuilder$Chunk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkitsec/ByteArrayBuilder$Chunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/webkitsec/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroid/webkitsec/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Landroid/webkitsec/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    sget-object v0, Landroid/webkitsec/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private obtainChunk(I)Landroid/webkitsec/ByteArrayBuilder$Chunk;
    .locals 3

    const/16 v1, 0x2000

    if-ge p1, v1, :cond_0

    const/16 p1, 0x2000

    :cond_0
    sget-object v2, Landroid/webkitsec/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/webkitsec/ByteArrayBuilder;->processPoolLocked()V

    sget-object v1, Landroid/webkitsec/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/webkitsec/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;

    if-eqz v0, :cond_1

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;

    invoke-direct {v0, p1}, Landroid/webkitsec/ByteArrayBuilder$Chunk;-><init>(I)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processPoolLocked()V
    .locals 2

    :goto_0
    sget-object v1, Landroid/webkitsec/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/webkitsec/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized append([BII)V
    .locals 5

    monitor-enter p0

    :goto_0
    if-lez p3, :cond_2

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p3}, Landroid/webkitsec/ByteArrayBuilder;->obtainChunk(I)Landroid/webkitsec/ByteArrayBuilder$Chunk;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    iget-object v3, v2, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mArray:[B

    array-length v3, v3

    iget v4, v2, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, v2, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mArray:[B

    iget v4, v2, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v2, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;

    move-object v2, v0

    iget v3, v2, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I

    iget-object v4, v2, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mArray:[B

    array-length v4, v4

    if-ne v3, v4, :cond_0

    invoke-direct {p0, p3}, Landroid/webkitsec/ByteArrayBuilder;->obtainChunk(I)Landroid/webkitsec/ByteArrayBuilder$Chunk;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/webkitsec/ByteArrayBuilder;->getFirstChunk()Landroid/webkitsec/ByteArrayBuilder$Chunk;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/ByteArrayBuilder$Chunk;->release()V

    invoke-virtual {p0}, Landroid/webkitsec/ByteArrayBuilder;->getFirstChunk()Landroid/webkitsec/ByteArrayBuilder$Chunk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getByteSize()I
    .locals 5

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;

    iget v3, v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getFirstChunk()Landroid/webkitsec/ByteArrayBuilder$Chunk;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseChunk(Landroid/webkitsec/ByteArrayBuilder$Chunk;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p1, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I

    iget-object v0, p0, Landroid/webkitsec/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
