.class public abstract Landroid/os/CustomFrequencyManager$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FrequencyRequest"
.end annotation


# instance fields
.field public mFrequency:I

.field mInvalidParam:Z

.field public mPkgName:Ljava/lang/String;

.field mTimeoutMs:J

.field mToken:Landroid/os/IBinder;

.field public mType:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 5
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 164
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    .line 167
    :try_start_0
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Boost Request from package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eq p2, v4, :cond_0

    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    .line 169
    :cond_0
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkGPUFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    const-string v1, "CustomFrequencyManager"

    const-string v2, "GPUFrequencyRequest : invalid frequency range"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    .line 210
    :goto_0
    return-void

    .line 174
    :cond_1
    const/16 v1, 0xa

    if-eq p2, v1, :cond_2

    const/16 v1, 0xb

    if-ne p2, v1, :cond_6

    .line 175
    :cond_2
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkSysBusFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 176
    const-string v1, "CustomFrequencyManager"

    const-string v2, "SysBusFrequencyRequest : invalid frequency range"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrequencyRequest:: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iput p2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    .line 191
    iput p3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    .line 192
    iput-wide p4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    .line 193
    const-string v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!! pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    # getter for: Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$000()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 196
    const-string v1, "android"

    # getter for: Landroid/os/CustomFrequencyManager;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/os/CustomFrequencyManager;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    sget-object v1, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    if-eqz v1, :cond_8

    sget-object v1, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 198
    sget-object v1, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    .line 206
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_5

    .line 207
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    .line 209
    :cond_5
    iput-object p6, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    goto/16 :goto_0

    .line 180
    :cond_6
    const/4 v1, 0x7

    if-eq p2, v1, :cond_7

    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 181
    :cond_7
    :try_start_1
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkCPUBoostRange(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    const-string v1, "CustomFrequencyManager"

    const-string v2, "CPUDVFSControlRequest : invalid frequency range"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 200
    :cond_8
    invoke-static {}, Landroid/os/CustomFrequencyManager;->createServerAppToken()V

    .line 201
    sget-object v1, Landroid/os/CustomFrequencyManager;->mServerAppToken:Landroid/os/IBinder;

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    goto :goto_1
.end method


# virtual methods
.method public cancelFrequencyRequest()V
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequestImpl()V

    .line 225
    :cond_0
    return-void
.end method

.method public abstract cancelFrequencyRequestImpl()V
.end method

.method public doFrequencyRequest()V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequestImpl()V

    .line 220
    :cond_0
    return-void
.end method

.method public abstract doFrequencyRequestImpl()V
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    return v0
.end method
