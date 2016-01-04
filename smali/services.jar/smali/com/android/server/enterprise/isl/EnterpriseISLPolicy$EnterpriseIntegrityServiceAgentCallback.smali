.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;
.super Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseIntegrityServiceAgentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Stub;-><init>()V

    .line 854
    return-void
.end method


# virtual methods
.method public addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;
    .param p3, "packagename"    # Ljava/lang/String;
    .param p4, "fingerprint"    # [B

    .prologue
    .line 1376
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISL addFingerPrint Uid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Package is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1378
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "addFingerPrint"

    invoke-virtual {p0, p4, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    .line 1379
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1380
    const-string v1, "isaPackageName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v1, "fpCurrent"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1383
    const-string v1, "fpDirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1386
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v1

    const-string v2, "EnterpriseIslFpTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public checkResult(IILjava/lang/String;[B[BI)V
    .locals 9
    .param p1, "version"    # I
    .param p2, "scanType"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "baselineFingerPrint"    # [B
    .param p5, "currentFingerPrint"    # [B
    .param p6, "opType"    # I

    .prologue
    .line 1111
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in checkResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v1, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v7

    .line 1114
    .local v7, "adminUid":I
    const/4 v0, 0x0

    .line 1115
    .local v0, "subscriber":Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v1, v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v0

    .line 1118
    if-eqz v0, :cond_1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1119
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onViolation(IILjava/lang/String;[B[BI)V

    .line 1121
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISA reported checkResult for scan type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :cond_1
    :goto_0
    return-void

    .line 1123
    :catch_0
    move-exception v8

    .line 1124
    .local v8, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearFingerPrintFlag(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;

    .prologue
    .line 1472
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL ClearFingerPrintFlag "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->clearFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public commit()Z
    .locals 4

    .prologue
    .line 1327
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL commit "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1329
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1330
    .local v1, "isaName":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->commitFingerPrint(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public commitFingerPrint(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;

    .prologue
    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, "status":Z
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISL commitFingerPrint "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->commitFingerPrint(ILjava/lang/String;)Z

    move-result v0

    .line 1486
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1488
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->clearFingerPrintFlag(ILjava/lang/String;)Z

    .line 1491
    :cond_1
    return v0
.end method

.method public computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V
    .locals 24
    .param p1, "file"    # Ljava/io/File;
    .param p2, "result"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;

    .prologue
    .line 887
    if-nez p1, :cond_1

    .line 888
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    const-string v21, "computeFileHash - invalid input"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    .line 895
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 896
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File Count -- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File -- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_2
    :try_start_0
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getFileAttributes(Ljava/lang/String;)I

    move-result v7

    .line 915
    .local v7, "fileAttributes":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 918
    .local v4, "attr":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 919
    :try_start_1
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1100(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v20

    const-string v21, "UTF-8"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 928
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 929
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v19

    .line 930
    .local v19, "subFiles":[Ljava/io/File;
    if-eqz v19, :cond_4

    .line 931
    move-object/from16 v3, v19

    .local v3, "arr$":[Ljava/io/File;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_5

    aget-object v18, v3, v9

    .line 932
    .local v18, "subFile":Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V

    .line 931
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 904
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v4    # "attr":Ljava/lang/String;
    .end local v7    # "fileAttributes":I
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "subFile":Ljava/io/File;
    .end local v19    # "subFiles":[Ljava/io/File;
    :catch_0
    move-exception v6

    .line 905
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v20, "algorithm %s does not exist"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "UTF-8"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 907
    .local v14, "msg":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 921
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v4    # "attr":Ljava/lang/String;
    .restart local v7    # "fileAttributes":I
    :catch_1
    move-exception v6

    .line 922
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v20, "algorithm %s does not exist"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "UTF-8"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 924
    .restart local v14    # "msg":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 936
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v19    # "subFiles":[Ljava/io/File;
    :cond_4
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_5

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "directory is empty"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    .end local v19    # "subFiles":[Ljava/io/File;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 942
    const/4 v11, 0x0

    .line 946
    .local v11, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 947
    .local v8, "fis":Ljava/io/FileInputStream;
    if-nez v8, :cond_6

    .line 948
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_6

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "FileInputStream is null -- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_6
    new-instance v12, Ljava/security/DigestInputStream;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v8, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 951
    .end local v11    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    if-eqz v12, :cond_b

    .line 952
    const/16 v20, 0x1000

    :try_start_3
    move/from16 v0, v20

    new-array v5, v0, [B

    .line 953
    .local v5, "buffer":[B
    invoke-virtual {v12, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 962
    if-eqz v12, :cond_0

    .line 964
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 965
    :catch_2
    move-exception v6

    .line 966
    .local v6, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed - closing file input stream: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 958
    .end local v5    # "buffer":[B
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v6

    .line 959
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 960
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed - generate file digest : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 962
    :cond_7
    if-eqz v11, :cond_8

    .line 964
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 973
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "is":Ljava/io/InputStream;
    :cond_8
    :goto_3
    const/4 v10, 0x0

    .line 974
    .local v10, "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v21

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getISAInterface(I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1400(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    move-result-object v10

    .line 975
    if-eqz v10, :cond_0

    .line 977
    :try_start_7
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900()I

    move-result v20

    if-lez v20, :cond_0

    .line 979
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 980
    .local v16, "resCount":D
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$900()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v20, v16, v20

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v15, v0

    .line 982
    .local v15, "progress":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1500()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v15, :cond_0

    .line 983
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_9

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Platform Scan Progress -- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_9
    # setter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I
    invoke-static {v15}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1502(I)I

    .line 986
    invoke-interface {v10, v15}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->platformScanProgress(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 989
    .end local v15    # "progress":I
    .end local v16    # "resCount":D
    :catch_4
    move-exception v6

    .line 990
    .local v6, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 962
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v10    # "interfaceISA":Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v20

    :goto_4
    if-eqz v11, :cond_a

    .line 964
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 962
    :cond_a
    :goto_5
    throw v20

    .line 965
    :catch_5
    move-exception v6

    .line 966
    .local v6, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v21

    if-eqz v21, :cond_a

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "failed - closing file input stream: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 965
    .local v6, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v6

    .line 966
    .local v6, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_8

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed - closing file input stream: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .end local v11    # "is":Ljava/io/InputStream;
    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 962
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :cond_b
    if-eqz v12, :cond_8

    .line 964
    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_3

    .line 965
    :catch_7
    move-exception v6

    .line 966
    .restart local v6    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v20

    if-eqz v20, :cond_8

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "failed - closing file input stream: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_6

    .line 962
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v20

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 958
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v6

    move-object v11, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method public countFiles(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 857
    if-nez p1, :cond_1

    .line 858
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "countFiles - invalid input"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    # ++operator for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$904()I

    .line 865
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 866
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 867
    .local v4, "subFiles":[Ljava/io/File;
    if-eqz v4, :cond_2

    .line 868
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 869
    .local v3, "subFile":Ljava/io/File;
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->countFiles(Ljava/io/File;)V

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 873
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "subFile":Ljava/io/File;
    :cond_2
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "directory is empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public delete3rdPartyBaseLine(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1319
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL delete3rdPartyBaseLine"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1321
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1322
    .local v1, "isaName":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public delete3rdPartyBaseline()Z
    .locals 10

    .prologue
    .line 1280
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISL delete3rdPartyBaseline"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_0
    const/4 v6, 0x1

    .line 1282
    .local v6, "ret":Z
    const/4 v2, 0x0

    .line 1283
    .local v2, "isa":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v7, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1284
    .local v0, "adminId":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v4, "packNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminISAMAPFromDB()Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1800(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Ljava/util/Map;

    move-result-object v3

    .line 1286
    .local v3, "mAdminISAMapFromDB":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1287
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "isa":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1288
    .restart local v2    # "isa":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;
    invoke-static {v7, v0, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1289
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1290
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1291
    .local v5, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_2

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISL delete3rdPartyBaseline--- Deleteing Baseline for PackageName:-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_2
    invoke-virtual {p0, v0, v2, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v6, v7

    .line 1293
    if-nez v6, :cond_1

    .line 1313
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    :goto_0
    return v6

    .line 1296
    :cond_4
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISL delete3rdPartyBaseline--- The package List := [ NULL ]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1298
    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1299
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "isa":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1300
    .restart local v2    # "isa":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getPackageListfromDB(ILjava/lang/String;)Ljava/util/List;
    invoke-static {v7, v0, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1301
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 1302
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1303
    .restart local v5    # "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_7

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ISL delete3rdPartyBaseline--- Deleteing Baseline for PackageName:-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_7
    invoke-virtual {p0, v0, v2, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v6, v7

    .line 1305
    if-nez v6, :cond_6

    goto :goto_0

    .line 1308
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_8
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISL delete3rdPartyBaseline--- The package List := [ NULL ]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1311
    :cond_9
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ISL delete3rdPartyBaseline--- There is no entry in the DB "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;
    .param p3, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 1451
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISL deleteFingerPrint of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v7

    const-string v3, "isaPackageName"

    aput-object v3, v1, v8

    const-string v3, "packageName"

    aput-object v3, v1, v9

    .line 1454
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p2, v2, v8

    aput-object p3, v2, v9

    .line 1455
    .local v2, "sValues":[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1456
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "fpDirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1459
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v3

    const-string v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public deletePlatformBaseLine()Z
    .locals 4

    .prologue
    .line 1241
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL deletePlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1243
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1244
    .local v1, "isaName":Ljava/lang/String;
    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public deletePreBaseLine()Z
    .locals 4

    .prologue
    .line 1205
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL deletePreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1207
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1208
    .local v1, "isaName":Ljava/lang/String;
    const-string v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->deleteFingerPrint(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public getPackageInfo(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p1, "PackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1071
    .local v2, "backupUID":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1700(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 1072
    .local v12, "userManager":Landroid/os/UserManager;
    invoke-virtual {v12}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    .line 1073
    .local v13, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1074
    .local v8, "pNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v7, "pInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 1077
    .local v11, "uf":Landroid/content/pm/UserInfo;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " in getPackageInfo -----  Retrieving packageList For UserId: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1700(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x5040

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v9

    .line 1079
    .local v9, "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v14

    if-eqz v14, :cond_2

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "in getPackageInfo-- USER ID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Total PackageLists Size ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_2
    if-eqz v9, :cond_0

    .line 1082
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 1083
    .local v10, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_3

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    .line 1084
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1087
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .line 1088
    .local v4, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1092
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v9    # "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "uf":Landroid/content/pm/UserInfo;
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1093
    .local v1, "PackageName":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1094
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1100
    .end local v1    # "PackageName":Ljava/lang/String;
    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1101
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_7

    .end local v7    # "pInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_3
    return-object v7

    .restart local v7    # "pInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_7
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public getPackageList()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1035
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1036
    .local v1, "backupUID":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1700(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 1037
    .local v11, "userManager":Landroid/os/UserManager;
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 1038
    .local v12, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    .local v6, "mPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 1040
    .local v13, "userlistSize":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Userlist size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1043
    .local v7, "pNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 1044
    .local v10, "uf":Landroid/content/pm/UserInfo;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " in getPackageList -----  Retrieving packageList For UserId: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1700(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x5040

    iget v0, v10, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v8

    .line 1048
    .local v8, "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v14

    if-eqz v14, :cond_2

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "in getPackageList-- USER ID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Total PackageLists Size ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_2
    if-eqz v8, :cond_0

    .line 1051
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 1052
    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_3

    iget-object v14, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    .line 1053
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1057
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 1058
    .local v3, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1062
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "packInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "uf":Landroid/content/pm/UserInfo;
    :cond_4
    if-eqz v7, :cond_5

    .line 1063
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1065
    :cond_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1066
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_6

    .end local v6    # "mPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-object v6

    .restart local v6    # "mPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1105
    const-string v0, "2.0"

    return-object v0
.end method

.method public performPlatformScan()[B
    .locals 10

    .prologue
    .line 997
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "in performPlatformScan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->syncObj:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1600()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1000
    const/4 v5, 0x0

    :try_start_0
    # setter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I
    invoke-static {v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$902(I)I

    .line 1001
    const/4 v5, -0x1

    # setter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I
    invoke-static {v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1502(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    :try_start_1
    new-instance v4, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;

    invoke-direct {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;-><init>()V

    .line 1005
    .local v4, "result":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;
    const/4 v2, 0x0

    .line 1007
    .local v2, "fingerprint":[B
    new-instance v5, Ljava/io/File;

    const-string v7, "/system"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->countFiles(Ljava/io/File;)V

    .line 1010
    new-instance v5, Ljava/io/File;

    const-string v7, "/system"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->computeFileHash(Ljava/io/File;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)V

    .line 1013
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1017
    .local v1, "finalResult":Ljava/security/MessageDigest;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileAttributeDigest:Ljava/security/MessageDigest;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1100(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1018
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->fileNameDigest:Ljava/security/MessageDigest;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1019
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->contentDigest:Ljava/security/MessageDigest;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;->access$1200(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1021
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1023
    :try_start_2
    monitor-exit v6

    return-object v2

    .line 1025
    .end local v1    # "finalResult":Ljava/security/MessageDigest;
    .end local v2    # "fingerprint":[B
    .end local v4    # "result":Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "Algorithm %s does not exist"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "SHA-256"

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, "msg":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1029
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1031
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public print_fingerprint([BLjava/lang/String;)V
    .locals 6
    .param p1, "fingerprint"    # [B
    .param p2, "fc"    # Ljava/lang/String;

    .prologue
    .line 1350
    if-nez p1, :cond_1

    .line 1351
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fingerprint is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_0
    return-void

    .line 1353
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 1354
    aget-byte v1, p1, v0

    .line 1355
    .local v1, "val":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte recieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1357
    .local v2, "vals":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public progress(II)V
    .locals 6
    .param p1, "percent"    # I
    .param p2, "opType"    # I

    .prologue
    .line 1129
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "in ISA progress"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1132
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1133
    .local v2, "subscriber":Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    .line 1135
    if-eqz v2, :cond_1

    .line 1136
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onProgress(II)V

    .line 1137
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA reported progress - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% for operation type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    :cond_1
    :goto_0
    return-void

    .line 1139
    :catch_0
    move-exception v1

    .line 1140
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public read3rdPartyBaseLine(Ljava/lang/String;)[B
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1273
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL read3rdPartyBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1275
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1276
    .local v1, "isaName":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;
    .param p3, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1426
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISL readFingerPrint "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_0
    new-array v1, v9, [Ljava/lang/String;

    const-string v4, "adminUid"

    aput-object v4, v1, v6

    const-string v4, "isaPackageName"

    aput-object v4, v1, v7

    const-string v4, "packageName"

    aput-object v4, v1, v8

    .line 1429
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    .line 1430
    .local v3, "sValues":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "fpBaseLined"

    aput-object v4, v2, v6

    .line 1431
    .local v2, "sReturnColumns":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1433
    .local v0, "resultFpB":[B
    iget-object v4, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v4

    const-string v5, "EnterpriseIslFpTable"

    invoke-virtual {v4, v5, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v0

    .line 1436
    const-string v4, "readFingerPrint"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    .line 1438
    return-object v0
.end method

.method public readPlatformBaseLine()[B
    .locals 4

    .prologue
    .line 1232
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL readPlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1234
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1235
    .local v1, "isaName":Ljava/lang/String;
    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public readPreBaseLine()[B
    .locals 4

    .prologue
    .line 1197
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL readPreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1199
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1200
    .local v1, "isaName":Ljava/lang/String;
    const-string v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->readFingerPrint(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public reportError(IILjava/lang/String;I)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "flag"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "opType"    # I

    .prologue
    .line 1146
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "in reportError"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1149
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1150
    .local v2, "subscriber":Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    .line 1152
    if-eqz v2, :cond_1

    .line 1153
    :try_start_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onError(IILjava/lang/String;I)V

    .line 1154
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA reported error for operation type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :cond_1
    :goto_0
    return-void

    .line 1156
    :catch_0
    move-exception v1

    .line 1157
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportSuccess(I)V
    .locals 6
    .param p1, "opType"    # I

    .prologue
    .line 1162
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "in reportSuccess"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v3, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1165
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1166
    .local v2, "subscriber":Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getSubscriberInstance(I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v2

    .line 1168
    if-eqz v2, :cond_1

    .line 1169
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onSuccess(I)V

    .line 1170
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISA reported success for operation type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :cond_1
    :goto_0
    return-void

    .line 1172
    :catch_0
    move-exception v1

    .line 1173
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rollback()Z
    .locals 4

    .prologue
    .line 1335
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL rollback "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1337
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1338
    .local v1, "isaName":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->rollbackFingerPrint(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public rollbackFingerPrint(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;

    .prologue
    .line 1477
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISL rollbackFingerPrint "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->rollbackFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public store3rdPartyBaseLine(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fingerprint"    # [B

    .prologue
    .line 1251
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL store3rdPartyBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1253
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1254
    .local v1, "isaName":Ljava/lang/String;
    const-string/jumbo v2, "system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "prebaseLine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1256
    :cond_1
    const/4 v2, 0x0

    .line 1258
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    goto :goto_0
.end method

.method public storePlatformBaseLine([B)Z
    .locals 4
    .param p1, "fingerprint"    # [B

    .prologue
    .line 1213
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL storePlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1215
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1216
    .local v1, "isaName":Ljava/lang/String;
    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public storePreBaseLine([B)Z
    .locals 4
    .param p1, "fingerprint"    # [B

    .prologue
    .line 1179
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL storePreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1181
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1182
    .local v1, "isaName":Ljava/lang/String;
    const-string v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->addFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public update3rdPartyBaseLine(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fingerprint"    # [B

    .prologue
    .line 1265
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL update3rdPartyBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1267
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1268
    .local v1, "isaName":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pIsaName"    # Ljava/lang/String;
    .param p3, "packagename"    # Ljava/lang/String;
    .param p4, "fingerprint"    # [B

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 1402
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISL updateFingerPrint "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_0
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v6

    const-string v3, "isaPackageName"

    aput-object v3, v1, v7

    const-string v3, "packageName"

    aput-object v3, v1, v5

    .line 1405
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    aput-object p3, v2, v5

    .line 1406
    .local v2, "sValues":[Ljava/lang/String;
    const-string/jumbo v3, "updateFingerPrint"

    invoke-virtual {p0, p4, v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->print_fingerprint([BLjava/lang/String;)V

    .line 1407
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1408
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "fpCurrent"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1409
    const-string v3, "fpDirty"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    invoke-static {v3}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$2000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    move-result-object v3

    const-string v4, "EnterpriseIslFpTable"

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public updatePlatformBaseLine([B)Z
    .locals 4
    .param p1, "fingerprint"    # [B

    .prologue
    .line 1222
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL updatePlatformBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1224
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1225
    .local v1, "isaName":Ljava/lang/String;
    const-string/jumbo v2, "system"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method

.method public updatePreBaseLine([B)Z
    .locals 4
    .param p1, "fingerprint"    # [B

    .prologue
    .line 1188
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISL updatePreBaseLine "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    # invokes: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getAdminId(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I
    invoke-static {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$1300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;)I

    move-result v0

    .line 1190
    .local v0, "adminId":I
    # getter for: Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mMultiMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->access$500()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1191
    .local v1, "isaName":Ljava/lang/String;
    const-string v2, "prebaseLine"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;->updateFingerPrint(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v2

    return v2
.end method
