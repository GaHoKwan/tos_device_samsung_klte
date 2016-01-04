.class Lcom/android/server/WifiOffloadService$10;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->getDataUsageforPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field appLaunchCount:I

.field dataUsageThreshold:I

.field statsService:Landroid/net/INetworkStatsService;

.field statsSession:Landroid/net/INetworkStatsSession;

.field template:Landroid/net/NetworkTemplate;

.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field totalDataUsage:J

.field uid:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1907
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$10;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1909
    iput-object v2, p0, Lcom/android/server/WifiOffloadService$10;->statsSession:Landroid/net/INetworkStatsSession;

    .line 1910
    iput-object v2, p0, Lcom/android/server/WifiOffloadService$10;->template:Landroid/net/NetworkTemplate;

    .line 1911
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    .line 1912
    iput v3, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    .line 1913
    iput-object v2, p0, Lcom/android/server/WifiOffloadService$10;->statsService:Landroid/net/INetworkStatsService;

    .line 1914
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService$10;->uid:I

    .line 1915
    iput v3, p0, Lcom/android/server/WifiOffloadService$10;->dataUsageThreshold:I

    return-void
.end method

.method private calculateDataUsageforInterface(Landroid/net/NetworkTemplate;)J
    .locals 10
    .param p1, "interfaceTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1951
    iget v7, p0, Lcom/android/server/WifiOffloadService$10;->uid:I

    iget-object v8, p0, Lcom/android/server/WifiOffloadService$10;->statsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/WifiOffloadService$10;->getDataUsageForUid(ILandroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 1953
    .local v2, "dataUsage":J
    iget-object v7, p0, Lcom/android/server/WifiOffloadService$10;->val$packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/wifi_offload/ExceptionalAppList;->getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1955
    .local v6, "listOfPackagesForDataUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1960
    .local v0, "currentPackage":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/server/WifiOffloadService;->access$1700(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1962
    .local v1, "currentPackageUid":I
    iget-object v7, p0, Lcom/android/server/WifiOffloadService$10;->statsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {p0, v1, v7, p1}, Lcom/android/server/WifiOffloadService$10;->getDataUsageForUid(ILandroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    add-long/2addr v2, v7

    goto :goto_0

    .line 1965
    .end local v1    # "currentPackageUid":I
    :catch_0
    move-exception v4

    .line 1966
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/WifiOffloadService$10;->val$packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Tried to check data usage for dependencies but failed to find package. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1973
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-wide v2
.end method

.method private getDataUsageForUid(ILandroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;)J
    .locals 13
    .param p1, "appUid"    # I
    .param p2, "statsSession"    # Landroid/net/INetworkStatsSession;
    .param p3, "statsTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1919
    const-wide/16 v6, 0x0

    .line 1920
    .local v6, "dataUsage":J
    const/4 v10, 0x0

    .line 1925
    .local v10, "history":Landroid/net/NetworkStatsHistory;
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p2

    move-object/from16 v1, p3

    move v2, p1

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1934
    .end local v10    # "history":Landroid/net/NetworkStatsHistory;
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    :goto_0
    if-eqz v0, :cond_0

    .line 1935
    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    .line 1938
    .local v9, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v9, :cond_0

    .line 1939
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received bytes  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1940
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transferred bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1941
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataUsage for app with uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1943
    iget-wide v1, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v3, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v6, v1, v3

    .line 1946
    .end local v9    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    return-wide v6

    .line 1927
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v10    # "history":Landroid/net/NetworkStatsHistory;
    :catch_0
    move-exception v8

    .line 1928
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Lcom/android/server/WifiOffloadService;->DBG:Z
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1929
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError in getting UID history "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v10

    .line 1933
    .end local v10    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v0    # "history":Landroid/net/NetworkStatsHistory;
    goto/16 :goto_0

    .line 1930
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v10    # "history":Landroid/net/NetworkStatsHistory;
    :catch_1
    move-exception v8

    .line 1931
    .local v8, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/WifiOffloadService;->DBG:Z
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1932
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get history for uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v10

    .end local v10    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v0    # "history":Landroid/net/NetworkStatsHistory;
    goto/16 :goto_0
.end method

.method private updateAppLaunchCount()V
    .locals 6

    .prologue
    .line 2142
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2143
    .local v2, "cv":Landroid/content/ContentValues;
    iget v0, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    .line 2144
    const-string v0, "launchcount"

    iget v1, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2145
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v0, v0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v1, v1, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiOffloadService$10;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "data_usage"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1979
    const/4 v7, 0x0

    .line 1981
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0, v12}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1985
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1700(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$10;->val$packageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1987
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/WifiOffloadService$10;->uid:I

    .line 1988
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP UID == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService$10;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1990
    const/4 v8, 0x0

    .line 1992
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v0, v0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v1, v1, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiOffloadService$10;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "data_usage"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1994
    if-eqz v8, :cond_2

    .line 1995
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1996
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget v1, p0, Lcom/android/server/WifiOffloadService$10;->uid:I

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$10;->val$packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/WifiOffloadService;->insertDataUsage(ILjava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;ILjava/lang/String;)Z

    .line 1999
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "App lauched for the first time, so dont offload but insert the UID to DB"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    .line 2001
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # invokes: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$2100(Lcom/android/server/WifiOffloadService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2019
    if-eqz v8, :cond_0

    .line 2020
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2139
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 2004
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2006
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2007
    const-string v0, "launchcount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    .line 2009
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    .line 2010
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch count in DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2019
    :cond_2
    if-eqz v8, :cond_3

    .line 2020
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2039
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2040
    .local v11, "isWifiOn":Z
    :goto_2
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v10

    .line 2041
    .local v10, "isWifiConnected":Z
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n     wifi: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoconnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v2}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    .line 2043
    if-nez v11, :cond_4

    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v10, :cond_8

    .line 2047
    :cond_5
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "WiFi is OFF or already connected; dont offload but increase app launch count"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2048
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService$10;->updateAppLaunchCount()V

    .line 2049
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # invokes: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$2100(Lcom/android/server/WifiOffloadService;)V

    goto/16 :goto_0

    .line 2015
    .end local v10    # "isWifiConnected":Z
    .end local v11    # "isWifiOn":Z
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 2017
    .local v9, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getDataUsageforPackage for dbHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2019
    if-eqz v8, :cond_3

    .line 2020
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 2024
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 2025
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ex in getting uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2019
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 2020
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2019
    :cond_6
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_7
    move v11, v12

    .line 2039
    goto/16 :goto_2

    .line 2055
    .restart local v10    # "isWifiConnected":Z
    .restart local v11    # "isWifiOn":Z
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    .line 2056
    const/high16 v0, 0x100000

    const-string v1, "persist.offload.datausage.limit"

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget v2, v2, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WifiOffloadService$10;->dataUsageThreshold:I

    .line 2059
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DATA_USAGE_THRESHOLD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService$10;->dataUsageThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2061
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService$10;->statsService:Landroid/net/INetworkStatsService;

    .line 2063
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->statsService:Landroid/net/INetworkStatsService;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    if-eqz v0, :cond_9

    .line 2065
    :try_start_9
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->statsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService$10;->statsSession:Landroid/net/INetworkStatsSession;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 2076
    :cond_9
    :goto_3
    :try_start_a
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->statsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_a

    .line 2079
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService$10;->calculateDataUsageforInterface(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    .line 2081
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage for Wi-fi Interface :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n     wifiUsage: total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " perLaunch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    iget v4, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    .line 2084
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage per launch count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    iget v4, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2087
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    iget v2, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/WifiOffloadService$10;->dataUsageThreshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    .line 2088
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "App\'s datausage exceeds the threshold so Offload"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2089
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z

    .line 2090
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "\n"

    # invokes: Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    .line 2111
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    dataUsageExceeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    .line 2113
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService$10;->updateAppLaunchCount()V

    .line 2116
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2117
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # invokes: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$2100(Lcom/android/server/WifiOffloadService;)V

    .line 2118
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->statsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->statsSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 2123
    :catch_2
    move-exception v9

    .line 2124
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ex in reading stats "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0, v12}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z

    .line 2128
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->statsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_c

    .line 2129
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->statsSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 2134
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify here. canOffload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2137
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # invokes: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$2100(Lcom/android/server/WifiOffloadService;)V

    goto/16 :goto_0

    .line 2066
    :catch_3
    move-exception v9

    .line 2071
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_c
    # getter for: Lcom/android/server/WifiOffloadService;->DBG:Z
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2072
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runtime ex in opening netstats session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2093
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_d
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "Data Usage does not reach threshold yet"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2096
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$2200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/WifiOffloadService$10;->calculateDataUsageforInterface(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    .line 2098
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifiAndMobileUsage: total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " perLaunch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    iget v4, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    .line 2100
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage for Wi-Fi + Mobile Interface :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2101
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Usage per launch count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    iget v4, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2104
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService$10;->totalDataUsage:J

    iget v2, p0, Lcom/android/server/WifiOffloadService$10;->appLaunchCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/WifiOffloadService$10;->dataUsageThreshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 2105
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "canAppOffload exceeds the threshold so Offload, break the loop"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2106
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiOffloadService;->access$1802(Lcom/android/server/WifiOffloadService;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    .line 2130
    :catch_4
    move-exception v9

    .line 2131
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ex in closing statsSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method
