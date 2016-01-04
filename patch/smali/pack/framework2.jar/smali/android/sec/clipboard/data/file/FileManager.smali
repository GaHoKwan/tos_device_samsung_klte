.class public Landroid/sec/clipboard/data/file/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
    }
.end annotation


# instance fields
.field private mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mContainerID:I

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListKNOX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field public mHandleID:I

.field private final mSupportKOX:Z


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 57
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 60
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    iput-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    .line 63
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 64
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 67
    iput p2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;II)V
    .locals 1
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "infoFileKNOX"    # Ljava/io/File;
    .param p3, "containerID"    # I
    .param p4, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 57
    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 60
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    iput-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    .line 71
    iput p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 72
    iput p4, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    .line 74
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 75
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 78
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/data/file/FileManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 53
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    return v0
.end method

.method static synthetic access$100(Landroid/sec/clipboard/data/file/FileManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/data/file/FileManager;

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    return v0
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 95
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v0, :cond_0

    .line 96
    iput p1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    .line 97
    if-nez p1, :cond_1

    .line 98
    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET personal mode DB"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "ClipboardServiceEx"

    const-string v1, "SET KNOX mode DB"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public add(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v1, 0x1

    .line 180
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardServiceEx"

    const-string v3, "add data..file system"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_3

    .line 183
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 185
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 189
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 191
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 194
    :cond_1
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v3, 0x63

    if-le v2, v3, :cond_2

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_2

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/clipboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v2, v3}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    .line 212
    :cond_2
    :goto_0
    return v1

    .line 201
    :cond_3
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 203
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 205
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 207
    const-string v2, "/data/clipboard/knox"

    const-string v3, "c1"

    invoke-static {v2, v3}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 212
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public add(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3
    .param p1, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v1, 0x1

    .line 163
    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 165
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 176
    :goto_0
    return v1

    .line 170
    .end local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Landroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 171
    .restart local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    .line 176
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 300
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 303
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public get(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 316
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 317
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 328
    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 329
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 335
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    goto :goto_0

    .line 335
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 83
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "refresh() - reload the mDataList "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 88
    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    .line 91
    :cond_2
    return-void
.end method

.method public remove(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v3, :cond_3

    .line 218
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 219
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 221
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v3, :cond_0

    .line 222
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 241
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 242
    const/4 v3, 0x0

    .line 244
    :goto_1
    return-object v3

    .line 225
    :cond_1
    const/4 v0, 0x0

    .line 226
    .local v0, "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 227
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 228
    .restart local v0    # "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    .line 226
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 237
    .end local v0    # "deleteItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 238
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    goto :goto_1
.end method

.method public remove(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 2
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v0, 0x1

    .line 249
    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 260
    :goto_0
    return v0

    .line 255
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeClipboardDB()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    .line 108
    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 109
    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 111
    :cond_0
    return-void
.end method

.method public removeKNOXData()V
    .locals 9

    .prologue
    .line 264
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v6, :cond_7

    .line 265
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KNOX data will be removed. total size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v5, "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_7

    .line 268
    const/4 v3, 0x0

    .line 269
    .local v3, "refreash":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 270
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 271
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/knox"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 277
    .local v1, "dataSize":I
    if-lez v1, :cond_3

    .line 278
    const/4 v3, 0x1

    .line 281
    :cond_3
    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-ltz v2, :cond_6

    .line 282
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 283
    .local v4, "removedIndex":I
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removedIndex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", index :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_4
    if-ltz v4, :cond_5

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 285
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 281
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 289
    .end local v4    # "removedIndex":I
    :cond_6
    if-eqz v3, :cond_7

    .line 290
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 291
    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeKNOXClipFilder()V

    .line 295
    .end local v1    # "dataSize":I
    .end local v2    # "i":I
    .end local v3    # "refreash":Z
    .end local v5    # "removedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    return-void
.end method

.method public set(ILandroid/sec/clipboard/data/ClipboardData;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 5
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 115
    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v3, :cond_3

    .line 116
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 117
    .local v2, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 119
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 124
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 125
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_0

    .line 126
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 129
    :cond_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mSupportKOX:Z

    if-eqz v3, :cond_1

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 132
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 133
    .restart local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 135
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_1

    .line 136
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 155
    .end local v0    # "i":I
    .end local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 156
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 158
    :goto_2
    return-object v3

    .line 131
    .restart local v0    # "i":I
    .restart local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    .end local v1    # "updateItem":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_3
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 144
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 146
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setProtectState(Z)V

    .line 149
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 150
    .restart local v2    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v2, :cond_1

    .line 151
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystemKNOX:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    goto :goto_1

    .line 158
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContainerID:I

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 311
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataListKNOX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
