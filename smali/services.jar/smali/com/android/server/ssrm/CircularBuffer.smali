.class public Lcom/android/server/ssrm/CircularBuffer;
.super Ljava/lang/Object;
.source "CircularBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private head:I

.field private pointer:I

.field private size:I

.field private totalSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "Size"    # I

    .prologue
    .local p0, "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    .line 25
    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    .line 27
    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->head:I

    .line 29
    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->pointer:I

    .line 33
    iput p1, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    .line 34
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/ssrm/CircularBuffer;->buffer:[Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized get()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<buffer:",
            "Ljava/lang/Object;",
            ">()[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    new-array v1, v2, [Ljava/lang/String;

    .line 49
    .local v1, "temp":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    if-ge v0, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/server/ssrm/CircularBuffer;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/ssrm/CircularBuffer;->head:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    monitor-exit p0

    return-object v1

    .line 48
    .end local v0    # "i":I
    .end local v1    # "temp":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized put(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<buffer:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/android/server/ssrm/CircularBuffer;, "Lcom/android/server/ssrm/CircularBuffer<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CircularBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/ssrm/CircularBuffer;->pointer:I

    aput-object p1, v0, v1

    .line 39
    iget v0, p0, Lcom/android/server/ssrm/CircularBuffer;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->pointer:I

    .line 40
    iget v0, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    iget v1, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    if-ne v0, v1, :cond_0

    .line 41
    iget v0, p0, Lcom/android/server/ssrm/CircularBuffer;->head:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/ssrm/CircularBuffer;->totalSize:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->head:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/CircularBuffer;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
