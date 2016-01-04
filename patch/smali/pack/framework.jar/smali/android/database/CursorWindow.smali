.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static final sCursorWindowSize:I

.field private static final sWindowToPidMap:Landroid/util/SparseIntArray;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 683
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 721
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 136
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 137
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    const-string v1, "Cursor window could not be created from binder."

    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeGetName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/database/CursorWindow$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    invoke-direct {p0, p1, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "windowSize"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 106
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 108
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor window allocation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/database/CursorWindow;->sCursorWindowSize:I

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kb failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    const-string p1, "<unnamed>"

    goto :goto_0

    .line 112
    .end local p1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, v0, v1}, Landroid/database/CursorWindow;->recordNewWindow(II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "localWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private dispose()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 161
    :cond_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-eqz v0, :cond_1

    .line 162
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->recordClosingOfWindow(I)V

    .line 163
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeDispose(I)V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 166
    :cond_1
    return-void
.end method

.method private static native nativeAllocRow(I)Z
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFreeLastRow(I)V
.end method

.method private static native nativeGetBlob(III)[B
.end method

.method private static native nativeGetDouble(III)D
.end method

.method private static native nativeGetLong(III)J
.end method

.method private static native nativeGetName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(I)I
.end method

.method private static native nativeGetString(III)Ljava/lang/String;
.end method

.method private static native nativeGetType(III)I
.end method

.method private static native nativePutBlob(I[BII)Z
.end method

.method private static native nativePutDouble(IDII)Z
.end method

.method private static native nativePutLong(IJII)Z
.end method

.method private static native nativePutNull(III)Z
.end method

.method private static native nativePutString(ILjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(II)Z
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 695
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    return-object v0
.end method

.method private printStats()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x3d4

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 745
    .local v3, "myPid":I
    const/4 v10, 0x0

    .line 746
    .local v10, "total":I
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 747
    .local v7, "pidCounts":Landroid/util/SparseIntArray;
    sget-object v13, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v13

    .line 748
    :try_start_0
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 749
    .local v9, "size":I
    if-nez v9, :cond_0

    .line 751
    const-string v12, ""

    monitor-exit v13

    .line 774
    :goto_0
    return-object v12

    .line 753
    :cond_0
    const/4 v2, 0x0

    .local v2, "indx":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 754
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 755
    .local v6, "pid":I
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 756
    .local v11, "value":I
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 753
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 758
    .end local v6    # "pid":I
    .end local v11    # "value":I
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 760
    .local v5, "numPids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_3

    .line 761
    const-string v12, " (# cursors opened by "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 763
    .restart local v6    # "pid":I
    if-ne v6, v3, :cond_2

    .line 764
    const-string v12, "this proc="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :goto_3
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 769
    .local v4, "num":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    add-int/2addr v10, v4

    .line 760
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 758
    .end local v1    # "i":I
    .end local v2    # "indx":I
    .end local v4    # "num":I
    .end local v5    # "numPids":I
    .end local v6    # "pid":I
    .end local v9    # "size":I
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 766
    .restart local v1    # "i":I
    .restart local v2    # "indx":I
    .restart local v5    # "numPids":I
    .restart local v6    # "pid":I
    .restart local v9    # "size":I
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 773
    .end local v6    # "pid":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-le v12, v14, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 774
    .local v8, "s":Ljava/lang/String;
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# Open Cursors="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 773
    .end local v8    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4
.end method

.method private recordClosingOfWindow(I)V
    .locals 2
    .param p1, "window"    # I

    .prologue
    .line 733
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 734
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 736
    monitor-exit v1

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 739
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recordNewWindow(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "window"    # I

    .prologue
    .line 724
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 725
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 726
    const-string v0, "CursorWindowStats"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "CursorWindowStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created a new Cursor. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    monitor-exit v1

    .line 730
    return-void

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 262
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeAllocRow(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 264
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 187
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 188
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeClear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 476
    if-nez p3, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 481
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 485
    return-void

    .line 483
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 151
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeLastRow()V
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 274
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeFreeLastRow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 278
    return-void

    .line 276
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 404
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetBlob(III)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 542
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 544
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetDouble(III)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 546
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 595
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 579
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(II)J
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 512
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetLong(III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 514
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 228
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeGetNumRows(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 230
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 563
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 439
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetString(III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getType(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 374
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetType(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 376
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 307
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFloat(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLong(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 321
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 351
    .local v0, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    .line 719
    return-void
.end method

.method public putBlob([BII)Z
    .locals 2
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 609
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Landroid/database/CursorWindow;->nativePutBlob(I[BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 611
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 2
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "column"    # I

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 661
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Landroid/database/CursorWindow;->nativePutDouble(IDII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 663
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 2
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "column"    # I

    .prologue
    .line 641
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 643
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Landroid/database/CursorWindow;->nativePutLong(IJII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 645
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 675
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 677
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativePutNull(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 679
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 626
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Landroid/database/CursorWindow;->nativePutString(ILjava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 628
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 1
    .param p1, "columnNum"    # I

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 248
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 250
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 217
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 705
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(ILandroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 711
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 714
    :cond_0
    return-void

    .line 708
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method
