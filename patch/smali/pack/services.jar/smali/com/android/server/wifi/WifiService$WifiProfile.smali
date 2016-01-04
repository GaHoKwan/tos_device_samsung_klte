.class Lcom/android/server/wifi/WifiService$WifiProfile;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileDefaultNamedata:Ljava/lang/String; = "/system/etc/wifi/default_ap.conf"

.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"

.field private static final filePrevNetworkName:Ljava/lang/String; = "/data/misc/wifi/prev_networkname.conf"


# instance fields
.field private fileDefaultPath:Ljava/io/File;

.field private filePath:Ljava/io/File;

.field private flagForDefaultAp:Z

.field private flagForGeneralNwInfo:Z

.field private flagForPrevNetworkName:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1210
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1211
    # setter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1902([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1212
    # setter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2002([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1213
    # setter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2102([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1214
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    .line 1215
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1216
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForPrevNetworkName:Z

    .line 1217
    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1218
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiService$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService$WifiProfile;

    .prologue
    .line 1200
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method private checkNetworkName()V
    .locals 13

    .prologue
    .line 1549
    const-string v7, ""

    .line 1550
    .local v7, "mMCCMNC":Ljava/lang/String;
    const-string v6, ""

    .line 1551
    .local v6, "mKeymgmt":Ljava/lang/String;
    const-string v5, ""

    .line 1552
    .local v5, "mEap":Ljava/lang/String;
    new-instance v8, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1553
    .local v8, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1554
    iget-object v10, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1555
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v10, ""

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 1556
    const-string v10, ""

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$1702(Ljava/lang/String;)Ljava/lang/String;

    .line 1557
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMCCMNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1560
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_2

    .line 1561
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGeneralNwInfo[j].getMCCMNC() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_1
    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1563
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 1564
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedNetworkName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    .end local v4    # "j":I
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1570
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_a

    .line 1571
    if-eqz v1, :cond_d

    .line 1572
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1573
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1574
    :cond_4
    const-string v6, "WPA-EAP IEEE8021X"

    .line 1576
    :cond_5
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    .line 1577
    const-string v5, "SIM"

    .line 1581
    :cond_6
    :goto_2
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1582
    # getter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 1583
    # getter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$1702(Ljava/lang/String;)Ljava/lang/String;

    .line 1584
    :cond_7
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedPrevNetworkName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_8
    const-string v6, ""

    .line 1586
    const-string v5, ""

    .line 1587
    const/4 v10, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$1602(Z)Z

    .line 1591
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    const-string v10, ""

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1599
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "p":I
    :cond_a
    :goto_3
    return-void

    .line 1560
    .restart local v4    # "j":I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1578
    .end local v4    # "j":I
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "p":I
    :cond_c
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    .line 1579
    const-string v5, "AKA"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1570
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1596
    .end local v9    # "p":I
    :catch_0
    move-exception v2

    .line 1597
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "checkNetworkName - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 17
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1415
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    .line 1418
    const-string v1, ""

    .line 1419
    .local v1, "buf1":Ljava/lang/String;
    const-string v2, ""

    .line 1421
    .local v2, "buf2":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1423
    .local v6, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    .end local v6    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "bufLine":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1427
    const-string v14, "mccmnc=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1428
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1429
    .local v8, "mccmnc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1430
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1431
    goto :goto_0

    .end local v8    # "mccmnc":Ljava/lang/String;
    :cond_2
    const-string v14, "networkname=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1432
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1433
    .local v11, "networkname":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1434
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 1435
    goto/16 :goto_0

    .line 1437
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v11    # "networkname":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1438
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1439
    const/4 v13, 0x0

    .line 1441
    if-eqz v6, :cond_3

    .line 1443
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1464
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-object v13

    .line 1441
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v6, :cond_4

    .line 1443
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1441
    :cond_4
    throw v14

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v7, :cond_6

    .line 1443
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1451
    :cond_6
    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1452
    .local v9, "mccmncs":[Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1454
    .local v12, "networknames":[Ljava/lang/String;
    array-length v10, v9

    .line 1455
    .local v10, "networkCount":I
    new-array v13, v10, [Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1457
    .local v13, "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v10, :cond_8

    .line 1458
    :try_start_6
    new-instance v14, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v15, v9, v5

    aget-object v16, v12, v5

    invoke-direct/range {v14 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v13, v5

    .line 1459
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GeneralNwInfo["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1457
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object v6, v7

    .line 1461
    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1462
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 1463
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const/4 v13, 0x0

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1444
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "i":I
    .end local v9    # "mccmncs":[Ljava/lang/String;
    .end local v10    # "networkCount":I
    .end local v12    # "networknames":[Ljava/lang/String;
    .end local v13    # "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    :catch_2
    move-exception v4

    .line 1445
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :goto_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1444
    :catch_3
    move-exception v4

    .line 1445
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1444
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .line 1445
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const/4 v13, 0x0

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 1441
    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1437
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1469
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForPrevNetworkName:Z

    .line 1472
    const-string v0, ""

    .line 1474
    .local v0, "buf1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1476
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "bufLine":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1480
    const-string v11, "networkname=\""

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1481
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1482
    .local v7, "networkname":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x22

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1483
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1484
    goto :goto_0

    .line 1486
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v7    # "networkname":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 1487
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1490
    if-eqz v4, :cond_2

    .line 1492
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    move-object v9, v10

    .line 1511
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-object v9

    .line 1490
    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v4, :cond_3

    .line 1492
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1490
    :cond_3
    throw v11

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :cond_4
    if-eqz v5, :cond_5

    .line 1492
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1500
    :cond_5
    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1501
    .local v8, "networknames":[Ljava/lang/String;
    array-length v6, v8

    .line 1502
    .local v6, "networkCount":I
    new-array v9, v6, [Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1504
    .local v9, "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v6, :cond_7

    .line 1505
    :try_start_6
    new-instance v11, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v12, v8, v3

    invoke-direct {v11, v12}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v3

    .line 1506
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PrevNetworkName["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v9, v3

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1504
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move-object v4, v5

    .line 1508
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1509
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 1510
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile: No ApInfo - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1511
    goto :goto_2

    .line 1493
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "i":I
    .end local v6    # "networkCount":I
    .end local v8    # "networknames":[Ljava/lang/String;
    .end local v9    # "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    :catch_2
    move-exception v2

    .line 1494
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v9, v10

    .line 1495
    goto :goto_2

    .line 1493
    :catch_3
    move-exception v2

    .line 1494
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1493
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .line 1494
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1495
    goto/16 :goto_2

    .line 1490
    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1486
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 33
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1324
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiService"

    const-string v3, "getVendorApInfoFromFile()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    .line 1327
    const-string v8, ""

    .line 1328
    .local v8, "buf1":Ljava/lang/String;
    const-string v9, ""

    .line 1329
    .local v9, "buf2":Ljava/lang/String;
    const-string v10, ""

    .line 1330
    .local v10, "buf3":Ljava/lang/String;
    const-string v11, ""

    .line 1331
    .local v11, "buf4":Ljava/lang/String;
    const-string v12, ""

    .line 1332
    .local v12, "buf5":Ljava/lang/String;
    const-string v13, ""

    .line 1334
    .local v13, "buf6":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1336
    .local v19, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    .end local v19    # "in":Ljava/io/BufferedReader;
    .local v20, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, "bufLine":Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 1340
    const-string/jumbo v2, "ssid=\""

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1341
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 1342
    .local v29, "ssid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1344
    goto :goto_0

    .end local v29    # "ssid":Ljava/lang/String;
    :cond_2
    const-string v2, "key_mgmt="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1345
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 1346
    .local v27, "secure":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1348
    goto/16 :goto_0

    .end local v27    # "secure":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "wep_key0="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1349
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 1350
    .local v31, "wepkey":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1352
    goto/16 :goto_0

    .end local v31    # "wepkey":Ljava/lang/String;
    :cond_4
    const-string v2, "priority="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1353
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 1354
    .local v24, "priority":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1356
    goto/16 :goto_0

    .end local v24    # "priority":Ljava/lang/String;
    :cond_5
    const-string v2, "eap="

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1357
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 1358
    .local v16, "eap":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1360
    goto/16 :goto_0

    .end local v16    # "eap":Ljava/lang/String;
    :cond_6
    const-string v2, "networkname=\""

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1361
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 1362
    .local v22, "networkname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 1364
    goto/16 :goto_0

    .line 1366
    .end local v14    # "bufLine":Ljava/lang/String;
    .end local v20    # "in":Ljava/io/BufferedReader;
    .end local v22    # "networkname":Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v15

    .line 1367
    .local v15, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1368
    const/16 v26, 0x0

    .line 1370
    if-eqz v19, :cond_7

    .line 1372
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1410
    .end local v15    # "e":Ljava/io/IOException;
    :cond_7
    :goto_2
    return-object v26

    .line 1370
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v19, :cond_8

    .line 1372
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1370
    :cond_8
    throw v2

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "bufLine":Ljava/lang/String;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_9
    if-eqz v20, :cond_a

    .line 1372
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1380
    :cond_a
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 1381
    .local v30, "ssids":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1382
    .local v28, "secures":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1383
    .local v32, "wepkeys":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1384
    .local v25, "prioritys":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1385
    .local v17, "eaps":[Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1386
    .local v23, "networknames":[Ljava/lang/String;
    move-object/from16 v0, v30

    array-length v2, v0

    move-object/from16 v0, v28

    array-length v3, v0

    if-eq v2, v3, :cond_b

    .line 1387
    const-string v2, "WifiService"

    const-string v3, "Parse error default ap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/16 v26, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1391
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_b
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v21, v0

    .line 1392
    .local v21, "networkCount":I
    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/server/wifi/WifiService$ApInfo;

    move-object/from16 v26, v0

    .line 1394
    .local v26, "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    :try_start_6
    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v25, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v30, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1395
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    .line 1396
    const-string v2, ""

    aget-object v3, v25, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ""

    aget-object v3, v17, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1397
    new-instance v2, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v3, v30, v18

    aget-object v4, v28, v18

    aget-object v5, v25, v18

    aget-object v6, v17, v18

    aget-object v7, v23, v18

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18

    .line 1401
    :cond_c
    :goto_5
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultAp["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret[].getEap() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v26, v18

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 1398
    :cond_e
    const-string v2, ""

    aget-object v3, v25, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, ""

    aget-object v3, v17, v18

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, ""

    const/4 v3, 0x0

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1399
    new-instance v2, Lcom/android/server/wifi/WifiService$ApInfo;

    aget-object v3, v30, v18

    aget-object v4, v28, v18

    aget-object v5, v25, v18

    aget-object v6, v17, v18

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/wifi/WifiService$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v26, v18
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    .line 1408
    .end local v18    # "i":I
    :catch_1
    move-exception v15

    .line 1409
    .local v15, "e":Ljava/lang/NullPointerException;
    const-string v2, "WifiService"

    const-string v3, "getVendorApInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/16 v26, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local v15    # "e":Ljava/lang/NullPointerException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "i":I
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_f
    move-object/from16 v19, v20

    .line 1403
    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 1405
    .end local v18    # "i":I
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :cond_10
    :try_start_7
    const-string v2, "WifiService"

    const-string v3, "No ApInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1406
    const/16 v26, 0x0

    .end local v26    # "ret":[Lcom/android/server/wifi/WifiService$ApInfo;
    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 1373
    .end local v14    # "bufLine":Ljava/lang/String;
    .end local v17    # "eaps":[Ljava/lang/String;
    .end local v21    # "networkCount":I
    .end local v23    # "networknames":[Ljava/lang/String;
    .end local v25    # "prioritys":[Ljava/lang/String;
    .end local v28    # "secures":[Ljava/lang/String;
    .end local v30    # "ssids":[Ljava/lang/String;
    .end local v32    # "wepkeys":[Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 1374
    .local v15, "e":Ljava/io/IOException;
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :goto_6
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 1373
    :catch_3
    move-exception v15

    .line 1374
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1373
    .end local v15    # "e":Ljava/io/IOException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "bufLine":Ljava/lang/String;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v15

    .line 1374
    .restart local v15    # "e":Ljava/io/IOException;
    const-string v2, "WifiService"

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const/16 v26, 0x0

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 1370
    .end local v14    # "bufLine":Ljava/lang/String;
    .end local v15    # "e":Ljava/io/IOException;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1366
    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v20    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v15

    move-object/from16 v19, v20

    .end local v20    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private makePrevNetworkName()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1255
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v6, ""

    .line 1257
    .local v6, "mNetworkNameProfile":Ljava/lang/String;
    const-string v7, ""

    .line 1258
    .local v7, "mPrevNetworkName":Ljava/lang/String;
    const-string v5, ""

    .line 1259
    .local v5, "mMCCMNC":Ljava/lang/String;
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1260
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "makePrevNetworkName mMCCMNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1263
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_2

    .line 1264
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGeneralNwInfo[].getMCCMNC() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_1
    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1266
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    .line 1267
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPrevNetworkName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    .end local v4    # "j":I
    :cond_2
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiService;->flagForNWNameCreate:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2200()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1277
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1278
    const-string v10, "network={\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1280
    const-string v10, "    networkname="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    :cond_3
    const-string/jumbo v10, "}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1290
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1291
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1292
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "String mNetworkNameProfile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_4
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {v10}, Lcom/android/server/wifi/WifiService;->access$1002(Ljava/io/File;)Ljava/io/File;

    .line 1295
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1000()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1296
    # getter for: Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1000()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1299
    :cond_5
    :try_start_2
    new-instance v8, Ljava/io/File;

    const-string v10, "/data/misc/wifi"

    const-string v11, "prev_networkname.conf"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1301
    .local v8, "profilefilepath":Ljava/io/File;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1302
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod 664 /data/misc/wifi/prev_networkname.conf"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1306
    :goto_3
    const/4 v2, 0x0

    .line 1308
    .local v2, "fw":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v3, v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1309
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .local v3, "fw":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1313
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v2, v3

    .line 1320
    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .end local v8    # "profilefilepath":Ljava/io/File;
    :goto_4
    # setter for: Lcom/android/server/wifi/WifiService;->flagForNWNameCreate:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiService;->access$2202(Z)Z

    .line 1322
    :cond_6
    return-void

    .line 1263
    .restart local v4    # "j":I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1272
    .end local v4    # "j":I
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "makePrevNetworkName - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1287
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1288
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "makePrevNetworkName -NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1303
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "profilefilepath":Ljava/io/File;
    :catch_2
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    .line 1315
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "profilefilepath":Ljava/io/File;
    :catch_3
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v10, "WifiService"

    const-string v11, "PrevNetworkName File Create Not Found "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1310
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v8    # "profilefilepath":Ljava/io/File;
    :catch_4
    move-exception v1

    .line 1311
    .local v1, "e1":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PrevNetworkName create file failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1313
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 1317
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .end local v8    # "profilefilepath":Ljava/io/File;
    :catch_5
    move-exception v0

    .line 1318
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "WifiService"

    const-string v11, "PrevNetworkName IOException"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1313
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v8    # "profilefilepath":Ljava/io/File;
    :catchall_0
    move-exception v10

    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v10
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1310
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_5
.end method


# virtual methods
.method public addChangedWifiProfile()V
    .locals 8

    .prologue
    .line 1602
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1603
    .local v4, "mWifi":Landroid/net/wifi/WifiManager;
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1604
    .local v5, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1605
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .line 1607
    .local v3, "mRes":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    .line 1609
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1610
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 1611
    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1612
    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1614
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1615
    const/4 v6, 0x2

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1616
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1617
    const-string v6, "WPA-EAP IEEE8021X"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1618
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 1619
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 1621
    :cond_0
    const-string v6, "SIM"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1622
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1625
    :cond_1
    :goto_1
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 1626
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 1627
    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiService;->access$1302(Z)Z

    .line 1610
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1623
    :cond_3
    const-string v6, "AKA"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1624
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1631
    .end local v2    # "k":I
    :catch_0
    move-exception v1

    .line 1632
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile - NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4
    return-void
.end method

.method public addWifiVendorProfile()V
    .locals 7

    .prologue
    .line 1519
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1520
    .local v3, "mWifi":Landroid/net/wifi/WifiManager;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1521
    .local v4, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 1523
    .local v2, "mRes":I
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 1525
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1527
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1528
    const/4 v5, 0x2

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1529
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1530
    const-string v5, "WPA-EAP IEEE8021X"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1531
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 1532
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 1534
    :cond_1
    const-string v5, "SIM"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1535
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1538
    :cond_2
    :goto_1
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 1539
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 1540
    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$1302(Z)Z

    .line 1524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1536
    :cond_3
    const-string v5, "AKA"

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1537
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1543
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile - NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    return-void
.end method

.method public getGeneralNwInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 2

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForGeneralNwInfo:Z

    if-eqz v0, :cond_0

    .line 1234
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    .line 1240
    :goto_0
    return-object v0

    .line 1235
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1237
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2002([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1240
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrevNetworkName()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 2

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForPrevNetworkName:Z

    if-eqz v0, :cond_0

    .line 1245
    # getter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    .line 1252
    :goto_0
    return-object v0

    .line 1246
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1248
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$2102([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1251
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->makePrevNetworkName()V

    .line 1252
    # getter for: Lcom/android/server/wifi/WifiService;->mPrevNetworkName:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2100()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;
    .locals 2

    .prologue
    .line 1221
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->flagForDefaultAp:Z

    if-eqz v0, :cond_0

    .line 1222
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    .line 1229
    :goto_0
    return-object v0

    .line 1223
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    .line 1224
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    .line 1226
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1227
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1902([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;

    .line 1229
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public removeChangedWifiProfile()V
    .locals 10

    .prologue
    .line 1637
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1638
    .local v6, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1639
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v5, ""

    .line 1640
    .local v5, "mKeymgmt":Ljava/lang/String;
    const-string v4, ""

    .line 1642
    .local v4, "mEap":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V

    .line 1644
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$2300()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1645
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_5

    .line 1646
    if-eqz v1, :cond_7

    .line 1647
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1648
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1649
    :cond_1
    const-string v5, "WPA-EAP IEEE8021X"

    .line 1651
    :cond_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 1652
    const-string v4, "SIM"

    .line 1656
    :cond_3
    :goto_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiService$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiService$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    # getter for: Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiService$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1657
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "WifiService"

    const-string v9, "remove proper wifi profile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiService$WifiProfile;->this$0:Lcom/android/server/wifi/WifiService;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiService;->removeNetwork(I)Z

    .line 1659
    const-string v5, ""

    .line 1660
    const-string v4, ""

    .line 1661
    const/4 v8, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$1302(Z)Z

    .line 1662
    const/4 v8, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiService;->access$1802(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1668
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "p":I
    :catch_0
    move-exception v2

    .line 1669
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v8, "WifiService"

    const-string v9, "removeChangedWifiProfile - NullPointerException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_5
    return-void

    .line 1653
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "p":I
    :cond_6
    :try_start_1
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    .line 1654
    const-string v4, "AKA"
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1645
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method
