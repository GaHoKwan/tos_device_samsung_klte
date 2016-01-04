.class public Lcom/android/server/enterprise/auditlog/Admin;
.super Ljava/lang/Object;
.source "Admin.java"

# interfaces
.implements Lcom/android/server/enterprise/auditlog/IObserver;


# instance fields
.field private mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

.field private mBegin:J

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mEnd:J

.field private mIptablesLogging:Z

.field private volatile mIsDumping:Z

.field private mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

.field private mMdmLogging:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 55
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    .line 58
    iput-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 59
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    .line 60
    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    .line 61
    iput-wide v4, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    .line 62
    return-void
.end method


# virtual methods
.method deleteAllFiles()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->deleteAllFiles()V

    .line 113
    return-void
.end method

.method dump(JJLandroid/os/ParcelFileDescriptor;)Z
    .locals 3
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "outputFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 77
    iget-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    if-nez v1, :cond_0

    .line 78
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 79
    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    .line 80
    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    .line 81
    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 82
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 83
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    const-string/jumbo v1, "swap"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;->swapFiles(Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 87
    :cond_0
    return v0
.end method

.method getCriticalLogSize()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCriticalLogSize()I

    move-result v0

    return v0
.end method

.method getCurrentLogFileSize()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCurrentLogFileSize()I

    move-result v0

    return v0
.end method

.method getDumpState()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    return v0
.end method

.method getIptablesLogging()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    return v0
.end method

.method getMDMLogging()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    return v0
.end method

.method getMaximumLogSize()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getMaximumLogSize()I

    move-result v0

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public notifyDumpFinished(ZZ)V
    .locals 4
    .param p1, "result"    # Z
    .param p2, "isFull"    # Z

    .prologue
    const/4 v2, 0x0

    .line 158
    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 159
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->setTypeOfDump(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.dump.audit.log.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    .line 168
    const-string v1, "mdm.intent.extra.audit.log.result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 175
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    const-string v2, "Dump failed! Sending Intent!"

    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "mdm.intent.extra.audit.log.result"

    const/16 v2, -0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public notifyReadyToDump(Z)V
    .locals 8
    .param p1, "result"    # Z

    .prologue
    .line 143
    if-eqz p1, :cond_1

    .line 144
    new-instance v0, Lcom/android/server/enterprise/auditlog/Dumper;

    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mBegin:J

    iget-wide v3, p0, Lcom/android/server/enterprise/auditlog/Admin;->mEnd:J

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Admin;->mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/LogWritter;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/Dumper;-><init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 146
    .local v0, "d":Lcom/android/server/enterprise/auditlog/Dumper;
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->setDeviceInfo(Ljava/util/List;)V

    .line 149
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->setPackageName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    .end local v0    # "d":Lcom/android/server/enterprise/auditlog/Dumper;
    :cond_1
    return-void
.end method

.method setBootCompleted(Z)V
    .locals 1
    .param p1, "boot"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setBootCompleted(Z)V

    .line 137
    return-void
.end method

.method setCriticalLogSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setCriticalLogSize(I)V

    .line 93
    return-void
.end method

.method setDeviceInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    .line 70
    return-void
.end method

.method setFilter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    new-instance v0, Lcom/android/server/enterprise/auditlog/Filter;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/Filter;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 190
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/Filter;->setFilter(Ljava/lang/String;)Z

    move-result v0

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setIptablesLogging(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mIptablesLogging:Z

    .line 121
    return-void
.end method

.method setMDMLogging(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/Admin;->mMdmLogging:Z

    .line 129
    return-void
.end method

.method setMaximumLogSize(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setMaximumLogSize(I)V

    .line 101
    return-void
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->shutdown()V

    .line 117
    return-void
.end method

.method write(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->write(Ljava/lang/String;)V

    .line 66
    return-void
.end method
