.class Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpDbInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransferPipeThread"
.end annotation


# instance fields
.field final args:[Ljava/lang/String;

.field pFd:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final thread:Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p2, "_thread"    # Landroid/app/IApplicationThread;
    .param p3, "_fd"    # Ljava/io/FileDescriptor;
    .param p4, "_args"    # [Ljava/lang/String;

    .prologue
    .line 13993
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 13994
    const-string v0, "TransferPipeWrite"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 13990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->pFd:Landroid/os/ParcelFileDescriptor;

    .line 13995
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->thread:Landroid/app/IApplicationThread;

    .line 13996
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->args:[Ljava/lang/String;

    .line 13998
    :try_start_0
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->pFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14001
    :goto_0
    return-void

    .line 13999
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 14004
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->pFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 14005
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->pFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->args:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 14006
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2TransferPipeThread;->pFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14011
    :cond_0
    :goto_0
    return-void

    .line 14009
    :catch_0
    move-exception v0

    goto :goto_0

    .line 14008
    :catch_1
    move-exception v0

    goto :goto_0
.end method
