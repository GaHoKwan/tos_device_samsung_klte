.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# instance fields
.field private isShared:Z

.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mContainerID:I

.field private mContext:Landroid/content/Context;

.field private mCurrentListIndex:I

.field private mDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Landroid/sec/clipboard/data/file/FileManager;

.field private final mMaxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    .line 100
    iput-boolean v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    .line 106
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 107
    invoke-direct {p0, p1, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(II)V

    .line 108
    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "containerID"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    .line 111
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 112
    iput-object p3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(II)V

    .line 114
    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Z)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "containerID"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "shared"    # Z

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    .line 118
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 119
    iput-object p3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    .line 120
    iput-boolean p4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(II)V

    .line 122
    return-void
.end method

.method private createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-boolean v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    if-eqz v4, :cond_0

    .line 259
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shared"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v2, "rootPath":Ljava/io/File;
    const-string v4, "ClipboardServiceEx"

    const-string v5, "createUserDBAndConnect() - SHARED - will create FileManager with a shared_clips.info"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "shared_clips.info"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v4, p1}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    .line 264
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 281
    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    .local v1, "fm":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 268
    .end local v1    # "fm":Ljava/lang/Object;
    .end local v2    # "rootPath":Ljava/io/File;
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/knox"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v3, "rootPathKNOX":Ljava/io/File;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    if-eqz v4, :cond_2

    .line 271
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v4, Ljava/io/File;

    const-string v5, "clips.info"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v6, "clips.info"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    invoke-direct {v0, v4, v5, v6, p1}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;Ljava/io/File;II)V

    .line 272
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v4, "/data/clipboard/knox"

    const-string v5, "c1"

    invoke-static {v4, v5}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_1
    move-object v1, v0

    .line 281
    .restart local v1    # "fm":Ljava/lang/Object;
    goto :goto_0

    .line 275
    .end local v1    # "fm":Ljava/lang/Object;
    :cond_2
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v4, Ljava/io/File;

    const-string v5, "clips.info"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v4, p1}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    .line 276
    .restart local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const/16 v4, 0x64

    if-lt p1, v4, :cond_1

    const/16 v4, 0xc8

    if-ge p1, v4, :cond_1

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private findFileManagerIndex(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 199
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 203
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 204
    .restart local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    if-ne v2, p1, :cond_0

    .line 205
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", i :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 202
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "i":I
    :cond_1
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find file manager. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initializeClipboardDataMgr(II)V
    .locals 12
    .param p1, "size"    # I
    .param p2, "containerID"    # I

    .prologue
    const/4 v11, 0x0

    .line 132
    iput v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 133
    iput p2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    .line 138
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/clipboard"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v3, "rootPath":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/clipboard/knox"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, "rootPathKNOX":Ljava/io/File;
    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ClipboardDefine.SUPPORT_KNOX :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    if-eqz v7, :cond_3

    const-string v7, "/shared/shared_"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "clips.info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "clipFile":Ljava/lang/String;
    iget-boolean v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->isShared:Z

    if-nez v7, :cond_0

    .line 156
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    if-eqz v7, :cond_4

    .line 157
    new-instance v7, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v10, "clips.info"

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;Ljava/io/File;II)V

    iput-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 160
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    :goto_1
    const-string v7, "/data/clipboard/knox"

    const-string v8, "c1"

    invoke-static {v7, v8}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;Ljava/lang/String;)Z

    .line 174
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 175
    .local v5, "um":Landroid/os/UserManager;
    const/4 v6, 0x0

    .line 176
    .local v6, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v5, :cond_1

    .line 177
    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 179
    :cond_1
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 181
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v7

    if-nez v7, :cond_2

    .line 183
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v2, v7, Landroid/content/pm/UserInfo;->id:I

    .line 184
    .local v2, "id":I
    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add multi user db...id :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 180
    .end local v2    # "id":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 151
    .end local v0    # "clipFile":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v5    # "um":Landroid/os/UserManager;
    .end local v6    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    const-string v7, ""

    goto/16 :goto_0

    .line 163
    .restart local v0    # "clipFile":Ljava/lang/String;
    :cond_4
    new-instance v7, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8, v11}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    iput-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    .line 165
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .restart local v5    # "um":Landroid/os/UserManager;
    .restart local v6    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    return-void
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 192
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    if-eq v0, p1, :cond_0

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    .line 193
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContainerID:I

    .line 194
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/FileManager;->UpdateClipboardDB(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public declared-synchronized addData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 13
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    .line 328
    monitor-enter p0

    const/4 v1, 0x1

    .line 329
    .local v1, "Result":Z
    :try_start_0
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v5

    .line 330
    .local v5, "iSize":I
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    if-ne v9, v12, :cond_1

    .line 331
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, "textValue":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    move v9, v10

    .line 387
    .end local v8    # "textValue":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v9

    .line 334
    .restart local v8    # "textValue":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 335
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    .line 336
    .local v7, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v9

    if-ne v9, v12, :cond_1

    .line 337
    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    .line 338
    goto :goto_0

    .line 346
    .end local v7    # "latestData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v8    # "textValue":Ljava/lang/String;
    :cond_1
    const/4 v6, -0x1

    .line 348
    .local v6, "index":I
    :try_start_2
    iget v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v5, v9, :cond_6

    .line 352
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 353
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9, v4}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 354
    .local v2, "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v2, :cond_5

    .line 355
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[addData] deleteData.GetProtectState() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_2
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v9

    if-nez v9, :cond_5

    .line 357
    move v6, v4

    .line 363
    .end local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_3
    if-ltz v6, :cond_4

    .line 365
    invoke-virtual {p0, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 366
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    .end local v4    # "i":I
    :cond_4
    :goto_2
    move v9, v1

    .line 387
    goto :goto_0

    .line 352
    .restart local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v4    # "i":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 377
    .end local v2    # "deleteData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v4    # "i":I
    :cond_6
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_2

    .line 381
    :catch_0
    move-exception v3

    .line 384
    .local v3, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2

    .line 328
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "iSize":I
    .end local v6    # "index":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 305
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 306
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "The index has been exceeded."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItem~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 226
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "multiUserMode_Called mode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentListIndex :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-eqz p2, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 228
    const-string v2, "ADDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v2, "REMOVED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    .line 232
    .local v0, "deleteIndex":I
    if-eq v0, v5, :cond_2

    .line 233
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 234
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 236
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 239
    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    :cond_2
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    .end local v0    # "deleteIndex":I
    :cond_3
    const-string v2, "SWITCHED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 242
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v2

    iput v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 243
    iget v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-eq v2, v5, :cond_4

    .line 244
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataArrayList:Ljava/util/ArrayList;

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0

    .line 246
    :cond_4
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    goto/16 :goto_0

    .line 250
    :cond_5
    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "multiUserMode_Called wrong mode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->refresh()V

    .line 222
    :cond_0
    return-void
.end method

.method public removeData(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 408
    const/4 v0, 0x1

    .line 412
    .local v0, "Result":Z
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(I)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return v0

    .line 413
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeData~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeKNOXData()V
    .locals 4

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeKNOXData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeKNOXData~Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    return v0
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 442
    const/4 v0, 0x1

    .line 447
    .local v0, "Result":Z
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mDataList:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return v0

    .line 448
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateData~Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
