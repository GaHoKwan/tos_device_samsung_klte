.class Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
.super Ljava/lang/Object;
.source "InternalClipboardExService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipBoardDataUiEventImp"
.end annotation


# instance fields
.field private final mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/sec/InternalClipboardExService;)V
    .locals 1

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;-><init>(Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/sec/InternalClipboardExService;
    .param p2, "x1"    # Lcom/android/server/sec/InternalClipboardExService$1;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/sec/InternalClipboardExService;)V

    return-void
.end method

.method private ListChange()V
    .locals 4

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$200(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$200(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListChange(RemoteException) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListChange(: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-object v0
.end method

.method public removeItem(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service removeItem index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 220
    .local v0, "bRes":Z
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-virtual {v3}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 221
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 222
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 223
    const-string v3, "ClipboardServiceEx"

    const-string v4, "Clipboard Service removeItem index is < mDataList"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 226
    .local v1, "delDt":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    .line 243
    .end local v1    # "delDt":Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 244
    invoke-direct {p0}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->ListChange()V

    .line 245
    :cond_3
    monitor-exit p0

    .line 246
    return-void

    .line 227
    :cond_4
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 228
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    sub-int v2, p1, v3

    .line 229
    .local v2, "newIndex":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 230
    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service removeItem - index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was higher than mDataList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newINxed to remove from shared = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_5
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 235
    .restart local v1    # "delDt":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    .line 236
    goto :goto_0

    .line 239
    .end local v1    # "delDt":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "newIndex":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 240
    .restart local v1    # "delDt":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    goto/16 :goto_0

    .line 245
    .end local v0    # "bRes":Z
    .end local v1    # "delDt":Landroid/sec/clipboard/data/ClipboardData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    if-nez p2, :cond_1

    .line 260
    :try_start_0
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataPasteEvent is null."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    monitor-exit p0

    .line 304
    :goto_0
    return-void

    .line 265
    :cond_1
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_2
    const/4 v2, 0x0

    .line 273
    .local v2, "resData":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-virtual {v3}, Lcom/android/server/sec/InternalClipboardExService;->isKnoxTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 274
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-ge p1, v3, :cond_6

    .line 275
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 276
    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_3
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 293
    :cond_4
    :goto_1
    invoke-interface {p2, v2}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :cond_5
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v2    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 279
    .restart local v2    # "resData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    if-lt p1, v3, :cond_4

    .line 280
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    sub-int v1, p1, v3

    .line 281
    .local v1, "newIndex":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 282
    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem - index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was higher than mDataList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v5}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newINxed to selectItem from shared = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_7
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mSharedclipMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 287
    goto :goto_1

    .line 290
    .end local v1    # "newIndex":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/sec/InternalClipboardExService;->mIsCalledPasteApp:Z
    invoke-static {v3, v4}, Lcom/android/server/sec/InternalClipboardExService;->access$502(Lcom/android/server/sec/InternalClipboardExService;Z)Z

    .line 291
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    # getter for: Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;
    invoke-static {v3}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clipboard Service selectItem-getItem error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method
