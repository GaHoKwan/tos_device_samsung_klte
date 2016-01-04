.class public Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;
.super Lcom/android/server/ssrm/settings/BatteryStatesController;
.source "BatteryStatesControllerDefault.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MAX_BUFFER_SIZE:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SSRMv2:BatteryStatesControllerDefault"

.field static final mDumpThreadSyncObject:Ljava/lang/Object;

.field static sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/CircularBuffer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveLevel:I

.field private mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

.field mHandler:Landroid/os/Handler;

.field private mPrevLevel:I

.field private mStates:Lcom/android/server/ssrm/settings/SortedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/SortedArrayList",
            "<",
            "Lcom/android/server/ssrm/settings/BatteryState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/server/ssrm/CircularBuffer;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/CircularBuffer;-><init>(I)V

    sput-object v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mDumpThreadSyncObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/ssrm/settings/BatteryStatesController;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    .line 48
    iget v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    iput v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevLevel:I

    .line 112
    return-void
.end method

.method private createHandler(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 178
    new-instance v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$1;-><init>(Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    .line 192
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 58
    return-void
.end method


# virtual methods
.method public addState(Lcom/android/server/ssrm/settings/BatteryState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/ssrm/settings/BatteryState;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-direct {v0}, Lcom/android/server/ssrm/settings/SortedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/SortedArrayList;->insertSorted(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method protected dumpStateChangeData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "TOP DUMP Based on SIOP Level"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v3, "\n================================================"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    sget-object v3, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    if-eqz v3, :cond_0

    .line 254
    sget-object v3, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CircularBuffer;->get()[Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "temp":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 257
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "i":I
    .end local v2    # "temp":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected findAndSetActive(I)V
    .locals 5
    .param p1, "temperature"    # I

    .prologue
    .line 195
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 196
    .local v1, "count":I
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/BatteryState;->setActive(Z)V

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->findStateIndexByTemperature(I)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    .line 200
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    if-eqz v3, :cond_2

    .line 201
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 202
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/BatteryState;

    .line 203
    .local v0, "battState":Lcom/android/server/ssrm/settings/BatteryState;
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v3}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 204
    iput v2, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    .line 208
    .end local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/settings/BatteryState;->setActive(Z)V

    .line 210
    .end local v2    # "ii":I
    :cond_2
    return-void

    .line 201
    .restart local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    .restart local v2    # "ii":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected findStateIndexByTemperature(I)Lcom/android/server/ssrm/settings/BatteryState;
    .locals 6
    .param p1, "temperature"    # I

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "battState":Lcom/android/server/ssrm/settings/BatteryState;
    const/4 v3, -0x1

    .line 215
    .local v3, "mBattLevel":I
    iget-object v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 216
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "ii":I
    :goto_0
    if-ltz v2, :cond_0

    .line 217
    iget-object v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    check-cast v0, Lcom/android/server/ssrm/settings/BatteryState;

    .line 218
    .restart local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 219
    move v3, v2

    .line 223
    :cond_0
    if-nez v0, :cond_2

    .line 224
    const/4 v4, 0x0

    .line 233
    :goto_1
    return-object v4

    .line 216
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 226
    :cond_2
    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    if-le v4, v3, :cond_3

    .line 227
    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/BatteryState;->temperature()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt p1, v4, :cond_3

    .line 228
    add-int/lit8 v3, v3, 0x1

    .line 229
    iget-object v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    check-cast v0, Lcom/android/server/ssrm/settings/BatteryState;

    .line 232
    .restart local v0    # "battState":Lcom/android/server/ssrm/settings/BatteryState;
    :cond_3
    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    iput v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevLevel:I

    move-object v4, v0

    .line 233
    goto :goto_1
.end method

.method public getActiveBatteryState(Z)Lcom/android/server/ssrm/settings/BatteryState;
    .locals 5
    .param p1, "dumpEnable"    # Z

    .prologue
    .line 87
    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevLevel:I

    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    if-ge v3, v4, :cond_2

    .line 92
    sget-object v3, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_0

    .line 94
    sget-object v3, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->createHandler(Landroid/os/Looper;)V

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 97
    .local v1, "time":J
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevLevel:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 99
    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 100
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "time":J
    :cond_1
    iget v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveLevel:I

    iput v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mPrevLevel:I

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mActiveState:Lcom/android/server/ssrm/settings/BatteryState;

    return-object v3
.end method

.method public removeState(Lcom/android/server/ssrm/settings/BatteryState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/ssrm/settings/BatteryState;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    return-void
.end method

.method protected setActiveState(II)V
    .locals 2
    .param p1, "oldTemperature"    # I
    .param p2, "newTemperature"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSRM. There are no states in battery state machine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->findAndSetActive(I)V

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Battery states:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mStates:Lcom/android/server/ssrm/settings/SortedArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/BatteryState;

    .line 241
    .local v2, "state":Lcom/android/server/ssrm/settings/BatteryState;
    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/BatteryState;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    .end local v2    # "state":Lcom/android/server/ssrm/settings/BatteryState;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
