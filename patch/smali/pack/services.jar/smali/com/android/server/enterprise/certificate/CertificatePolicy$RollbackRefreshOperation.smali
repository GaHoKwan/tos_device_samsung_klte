.class Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;
.super Landroid/os/AsyncTask;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollbackRefreshOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mOperation:I

.field private final mPriority:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .locals 1
    .param p2, "operation"    # I

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 863
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    .line 864
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    .line 865
    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V
    .locals 3
    .param p2, "operation"    # I
    .param p3, "priority"    # I

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 868
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    .line 872
    const/16 v0, -0x14

    if-lt p3, v0, :cond_0

    const/16 v0, 0x13

    if-gt p3, v0, :cond_0

    .end local p3    # "priority":I
    :goto_0
    iput p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    .line 874
    const-string v0, "CertificatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    return-void

    .line 872
    .restart local p3    # "priority":I
    :cond_0
    const/16 p3, 0xa

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .prologue
    .line 858
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .prologue
    .line 858
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    return-void
.end method

.method private refreshNativeKeyStore(I)V
    .locals 16
    .param p1, "keystoreUid"    # I

    .prologue
    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v15

    .line 1077
    .local v15, "removedNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1078
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1079
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v2

    const-string v4, "CACERT_"

    move/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 1080
    .local v9, "aliasList":[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 1081
    move-object v10, v9

    .local v10, "arr$":[Ljava/lang/String;
    array-length v14, v10

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v8, v10, v13

    .line 1082
    .local v8, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v12

    .line 1084
    .local v12, "certBytes":[B
    if-eqz v12, :cond_0

    .line 1085
    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;
    invoke-static {v12}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500([B)Ljava/security/cert/X509Certificate;

    move-result-object v11

    .line 1086
    .local v11, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v2, v11, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    .end local v11    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1095
    .end local v8    # "alias":Ljava/lang/String;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v12    # "certBytes":[B
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v2

    const-string v4, "USRCERT_"

    move/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 1096
    if-eqz v9, :cond_3

    .line 1097
    move-object v10, v9

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v14, v10

    .restart local v14    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_1
    if-ge v13, v14, :cond_3

    aget-object v8, v10, v13

    .line 1098
    .restart local v8    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v12

    .line 1100
    .restart local v12    # "certBytes":[B
    if-eqz v12, :cond_2

    .line 1101
    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;
    invoke-static {v12}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500([B)Ljava/security/cert/X509Certificate;

    move-result-object v11

    .line 1102
    .restart local v11    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v2, v11, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    .end local v11    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1112
    .end local v8    # "alias":Ljava/lang/String;
    .end local v9    # "aliasList":[Ljava/lang/String;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v12    # "certBytes":[B
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;)Ljava/util/List;

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1119
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x1

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    .line 1121
    .local v1, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1125
    .end local v1    # "nativeSystemOperation":Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1126
    return-void

    .line 1112
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private refreshSystemKeyStore()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1019
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v5, "systemDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1020
    .local v8, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v5, "systemPrevDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1021
    .local v10, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v14, "userRemovedList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v5, v14}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v11

    .line 1025
    .local v11, "removedUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v12

    .line 1026
    .local v12, "systemAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1028
    .local v6, "alias":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1, v6, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 1030
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v1, v7, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1034
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1041
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v13

    .line 1042
    .local v13, "userAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1043
    .restart local v6    # "alias":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 1044
    .restart local v7    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v1, v7, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1046
    invoke-interface {v11, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1051
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;)Ljava/util/List;

    .line 1054
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v3, "deleteAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1056
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1057
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    .line 1059
    .local v0, "operation":Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1062
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1063
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "systemPrevDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1065
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v2, "userRemovedList"

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1066
    return-void
.end method

.method private rollbackNativeKeyStore(I)V
    .locals 13
    .param p1, "keystoreUid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 980
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v3, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v12

    .line 984
    .local v12, "removedNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v10, "removeEdmNativeAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 989
    .local v5, "installNativeCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 991
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v11, "removeFromRemovedNativeKeyStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 993
    .local v7, "alias":Ljava/lang/String;
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 994
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v1, v8, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1000
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1001
    .restart local v7    # "alias":Ljava/lang/String;
    invoke-interface {v12, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1005
    .end local v7    # "alias":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move v3, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    .line 1007
    .local v0, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1011
    .end local v0    # "nativeSystemOperation":Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "removeFromRemovedNativeKeyStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    .line 1014
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1015
    return-void
.end method

.method private rollbackSystemKeyStore()V
    .locals 17

    .prologue
    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 921
    .local v9, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemPrevDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 922
    .local v14, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "userRemovedList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 924
    .local v16, "removedUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v5, "installCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v10, "enabledUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v15, "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 930
    .local v7, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/org/conscrypt/TrustedCertificateStore;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 931
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v2, v8, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 933
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 935
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 937
    :cond_1
    invoke-interface {v14, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 941
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 942
    .restart local v7    # "alias":Ljava/lang/String;
    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 946
    .end local v7    # "alias":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    .line 948
    .local v13, "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 949
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 950
    .restart local v7    # "alias":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 951
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v2, v8, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 954
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 955
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 961
    .end local v7    # "alias":Ljava/lang/String;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    .line 964
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    .line 966
    .local v1, "operation":Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "systemPrevDisabledList"

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v14}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v3, "userRemovedList"

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V

    .line 973
    return-void
.end method

.method private selectNativeKeystoreUid(I)Ljava/lang/String;
    .locals 2
    .param p1, "keystoreUid"    # I

    .prologue
    .line 1130
    const/16 v1, 0x3f2

    if-ne p1, v1, :cond_0

    .line 1131
    const-string v0, "nativeRemovedList_wifi"

    .line 1135
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1133
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    const-string v0, "nativeRemovedList"

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 858
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 879
    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 880
    iget v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    packed-switch v0, :pswitch_data_0

    .line 910
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings()V
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    .line 912
    const/4 v0, 0x0

    return-object v0

    .line 882
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 883
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshSystemKeyStore()V

    .line 884
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    .line 885
    const/16 v0, 0x3f2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    .line 886
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 889
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 890
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackSystemKeyStore()V

    .line 891
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    .line 892
    const/16 v0, 0x3f2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    .line 893
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 896
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 897
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackSystemKeyStore()V

    .line 898
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    .line 899
    const/16 v0, 0x3f2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    .line 900
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshSystemKeyStore()V

    .line 901
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    .line 902
    const/16 v0, 0x3f2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    .line 903
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
