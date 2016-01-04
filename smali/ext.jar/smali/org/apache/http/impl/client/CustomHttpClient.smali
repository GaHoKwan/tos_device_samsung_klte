.class public Lorg/apache/http/impl/client/CustomHttpClient;
.super Lorg/apache/http/impl/client/AbstractHttpClient;
.source "CustomHttpClient.java"


# static fields
.field public static APACHE_HTTP_DBG:Z = false

.field public static final APACHE_HTTP_TIMER:Z = false

.field private static final CONNECTIVITY_MANAGER_ENABLE_MULTIRAT:Ljava/lang/String; = "autoEnableMultiRAT"

.field private static final CONNECTIVITY_MANAGER_GET_FAST_INTERFACE:Ljava/lang/String; = "getSmartBondingData"

.field private static final CONNECTIVITY_MANAGER_GET_PROXY:Ljava/lang/String; = "getProxyInfo"

.field private static final CONNECTIVITY_MANAGER_GET_SB_ENABLED:Ljava/lang/String; = "getSBEnabled"

.field private static final CONNECTIVITY_MANAGER_GET_SB_INTERFACE:Ljava/lang/String; = "getSBInterfaceEx"

.field private static final CONNECTIVITY_MANAGER_GET_SB_USAGE:Ljava/lang/String; = "getSBUsageStatus"

.field private static final CONNECTIVITY_MANAGER_SB_USAGE:Ljava/lang/String; = "startSBUsageURL"

.field private static final CONNECTIVITY_MANAGER_STOP_SB_USAGE:Ljava/lang/String; = "stopSBUsage"

.field private static final CONNECTIVITY_MANAGER_SUBMIT_DATA:Ljava/lang/String; = "submitMultiSocketData"

.field private static final CONNECTIVITY_SERVICE:Ljava/lang/String; = "sb_service"

.field protected static HTTPFILELOG:Z = false

.field private static final ICONNECTIVITY_MANAGER_STUB:Ljava/lang/String; = "com.samsung.smartbonding.ISmartBondingService$Stub"

.field private static final ICONNECTIVITY_MANAGER_STUB_AS_INTERFACE:Ljava/lang/String; = "asInterface"

.field public static final INF_MOBILE:I = 0x1

.field private static final INF_NAME_MOBILE:Ljava/lang/String; = "rmnet"

.field private static final INF_NAME_WIFI:Ljava/lang/String; = "wlan"

.field public static final INF_NUMBER:I = 0x2

.field public static final INF_WIFI:I = 0x0

.field private static final SERVICE_MANAGER:Ljava/lang/String; = "android.os.ServiceManager"

.field private static final SERVICE_MANAGER_METHOD_GET_SERVICE:Ljava/lang/String; = "getService"

.field public static final SMARTBONDING_MAIN_SOCKET_IPVER:Ljava/lang/String; = "SMARTBONDING_MAIN_SOCKET_IPVER"

.field public static final SMARTBONDING_MAIN_THREAD_ID:Ljava/lang/String; = "SMARTBONDING_MAIN_THREAD_ID"

.field private static fDateFormat:Ljava/text/SimpleDateFormat;

.field private static fHttpFileLog:Ljava/io/BufferedWriter;

.field private static logFileLocker:Ljava/lang/Object;

.field static sIConnectivityManager:Ljava/lang/Object;

.field static sIConnectivityManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sIsAndroidClassesReflectionDone:Z

.field static sMethodCounter:I

.field static sMethodNames:[Ljava/lang/reflect/Method;

.field static sServiceManager:Ljava/lang/Object;

.field static sServiceManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mDestIPVer:I

.field sGetServiceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 212
    sput-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->sIsAndroidClassesReflectionDone:Z

    .line 218
    sput-object v1, Lorg/apache/http/impl/client/CustomHttpClient;->sServiceManagerClass:Ljava/lang/Class;

    .line 219
    sput-object v1, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodNames:[Ljava/lang/reflect/Method;

    .line 221
    sput-object v1, Lorg/apache/http/impl/client/CustomHttpClient;->sServiceManager:Ljava/lang/Object;

    .line 222
    sput-object v1, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    .line 223
    sput-object v1, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    .line 224
    sput v2, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodCounter:I

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/CustomHttpClient;->logFileLocker:Ljava/lang/Object;

    .line 233
    sput-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->HTTPFILELOG:Z

    .line 237
    sput-object v1, Lorg/apache/http/impl/client/CustomHttpClient;->fHttpFileLog:Ljava/io/BufferedWriter;

    .line 241
    sput-object v1, Lorg/apache/http/impl/client/CustomHttpClient;->fDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "ipVer"    # I

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 220
    iput-object v0, p0, Lorg/apache/http/impl/client/CustomHttpClient;->sGetServiceMethod:Ljava/lang/reflect/Method;

    .line 252
    iput p1, p0, Lorg/apache/http/impl/client/CustomHttpClient;->mDestIPVer:I

    .line 253
    return-void
.end method

.method static synthetic access$000()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    return-void
.end method

.method public static bBothInfAvail(I)Z
    .locals 5
    .param p0, "perIPVer"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 555
    invoke-static {v3, p0}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 557
    .local v0, "ret0":Z
    :goto_0
    invoke-static {v2, p0}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 558
    .local v1, "ret1":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v2

    .end local v0    # "ret0":Z
    .end local v1    # "ret1":Z
    :cond_0
    move v0, v3

    .line 555
    goto :goto_0

    .restart local v0    # "ret0":Z
    :cond_1
    move v1, v3

    .line 557
    goto :goto_1

    .restart local v1    # "ret1":Z
    :cond_2
    move v2, v3

    .line 558
    goto :goto_2
.end method

.method protected static flushLogs()V
    .locals 1

    .prologue
    .line 1317
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->HTTPFILELOG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/http/impl/client/CustomHttpClient;->fHttpFileLog:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 1319
    :try_start_0
    sget-object v0, Lorg/apache/http/impl/client/CustomHttpClient;->fHttpFileLog:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1320
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getAddrsByHost(JLjava/lang/String;I)[Ljava/net/InetAddress;
    .locals 14
    .param p0, "threadID"    # J
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "ipStyle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 720
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v12, 0x4e20

    add-long v5, v2, v12

    .line 721
    .local v5, "timeOut":J
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 723
    .local v7, "retAddrs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    .line 725
    new-instance v9, Lorg/apache/http/impl/client/CustomHttpClient$1;

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v7}, Lorg/apache/http/impl/client/CustomHttpClient$1;-><init>(Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 746
    .local v9, "r2":Ljava/lang/Runnable;
    new-instance v11, Ljava/lang/Thread;

    invoke-direct {v11, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 747
    .local v11, "t2":Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 751
    .end local v9    # "r2":Ljava/lang/Runnable;
    .end local v11    # "t2":Ljava/lang/Thread;
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/CustomHttpClient$2;

    move-wide v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/http/impl/client/CustomHttpClient$2;-><init>(JLjava/lang/String;JLjava/util/LinkedList;)V

    .line 810
    .local v1, "r1":Ljava/lang/Runnable;
    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 811
    .local v10, "t1":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 813
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-gez v2, :cond_4

    .line 814
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :try_start_1
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBServiceAPI: current result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 816
    :cond_1
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 817
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/InetAddress;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/net/InetAddress;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 820
    :cond_2
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-virtual {v7, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 824
    :goto_1
    :try_start_3
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 831
    .end local v1    # "r1":Ljava/lang/Runnable;
    .end local v5    # "timeOut":J
    .end local v7    # "retAddrs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    .end local v10    # "t1":Ljava/lang/Thread;
    :catch_0
    move-exception v8

    .line 832
    .local v8, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    invoke-static {v8}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 833
    :cond_3
    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot resolve host "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 828
    .end local v8    # "e":Ljava/lang/Throwable;
    .restart local v1    # "r1":Ljava/lang/Runnable;
    .restart local v5    # "timeOut":J
    .restart local v7    # "retAddrs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    .restart local v10    # "t1":Ljava/lang/Thread;
    :cond_4
    :try_start_5
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "SBServiceAPI: responseGetAllByName time out"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 829
    :cond_5
    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot resolve host "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 822
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected static getHttpLogEnabled()Z
    .locals 6

    .prologue
    .line 1143
    const/4 v2, 0x0

    .line 1145
    .local v2, "isLogEnabled":Z
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 1147
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v4, "getHttpLogEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1149
    .local v1, "getHttpLogEnabled":Ljava/lang/reflect/Method;
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1156
    .end local v1    # "getHttpLogEnabled":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v2

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    .line 1152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getHttpLogEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1153
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getIPStyle(Ljava/net/InetAddress;I)I
    .locals 5
    .param p0, "local"    # Ljava/net/InetAddress;
    .param p1, "ipVer"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 574
    if-nez p0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v2

    .line 575
    :cond_1
    invoke-static {v2, p1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v0

    .line 576
    .local v0, "addr0":Ljava/net/InetAddress;
    invoke-static {v3, p1}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v1

    .line 577
    .local v1, "addr1":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 578
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    instance-of v4, v1, Ljava/net/Inet4Address;

    if-nez v4, :cond_2

    move v2, v3

    .line 579
    goto :goto_0

    .line 580
    :cond_2
    instance-of v4, v1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3

    instance-of v4, v0, Ljava/net/Inet4Address;

    if-nez v4, :cond_3

    move v2, v3

    .line 581
    goto :goto_0

    .line 582
    :cond_3
    invoke-virtual {p0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    const/4 v2, 0x2

    goto :goto_0
.end method

.method protected static getLocalAddrEx(II)Ljava/net/InetAddress;
    .locals 1
    .param p0, "netType"    # I
    .param p1, "perIPver"    # I

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, "ret":Ljava/net/InetAddress;
    invoke-static {p0, p1}, Lorg/apache/http/impl/client/CustomHttpClient;->getSBInterface(II)Ljava/net/InetAddress;

    move-result-object v0

    .line 570
    return-object v0
.end method

.method private static getLogFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1272
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "/sdcard/SB_APACHE_HTTP_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v2, "fname":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1274
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1275
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy_MM_dd_HH_mm_ss_SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1276
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1277
    .local v1, "dateString":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getNBEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 650
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 651
    sget-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v4, "getSBEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 652
    .local v1, "getSBEnabled":Ljava/lang/reflect/Method;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SBServiceAPI: getSBEnabled("

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 653
    :cond_0
    sget-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 657
    :goto_0
    return v2

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_1
    move v2, v3

    .line 657
    goto :goto_0
.end method

.method private static getSBInterface(II)Ljava/net/InetAddress;
    .locals 9
    .param p0, "netType"    # I
    .param p1, "ipVer"    # I

    .prologue
    const/4 v3, 0x0

    .line 691
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 693
    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v5, "getSBInterfaceEx"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 695
    .local v1, "getSBInterface":Ljava/lang/reflect/Method;
    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 696
    .local v2, "ipAddress":Ljava/lang/String;
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The getSBIterface return ip address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 697
    :cond_0
    if-eqz v2, :cond_1

    .line 698
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 708
    .end local v1    # "getSBInterface":Ljava/lang/reflect/Method;
    .end local v2    # "ipAddress":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_1

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getSBEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 706
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSBSercie()Z
    .locals 1

    .prologue
    .line 635
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :goto_0
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->sIsAndroidClassesReflectionDone:Z

    return v0

    .line 637
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getService()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 600
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->sIsAndroidClassesReflectionDone:Z

    if-nez v2, :cond_1

    .line 602
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sServiceManagerClass:Ljava/lang/Class;

    .line 604
    sget-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sServiceManagerClass:Ljava/lang/Class;

    const-string v3, "getService"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 608
    .local v0, "getServiceMethod":Ljava/lang/reflect/Method;
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "sb_service"

    aput-object v3, v2, v7

    invoke-virtual {v0, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sServiceManager:Ljava/lang/Object;

    .line 614
    const-string v2, "com.samsung.smartbonding.ISmartBondingService$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 615
    .local v1, "stubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodNames:[Ljava/lang/reflect/Method;

    .line 617
    :goto_0
    sget v2, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodCounter:I

    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodNames:[Ljava/lang/reflect/Method;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 618
    sget-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodNames:[Ljava/lang/reflect/Method;

    sget v3, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodCounter:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asInterface"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 624
    :cond_0
    sget-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodNames:[Ljava/lang/reflect/Method;

    sget v3, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodCounter:I

    aget-object v2, v2, v3

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->sServiceManager:Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    .line 627
    sget-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    .line 629
    sput-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->sIsAndroidClassesReflectionDone:Z

    .line 631
    :cond_1
    return-void

    .line 617
    :cond_2
    sget v2, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/apache/http/impl/client/CustomHttpClient;->sMethodCounter:I

    goto :goto_0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 1247
    if-nez p0, :cond_0

    .line 1248
    const-string v3, ""

    .line 1264
    :goto_0
    return-object v3

    .line 1253
    :cond_0
    move-object v2, p0

    .line 1254
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_2

    .line 1255
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 1256
    const-string v3, ""

    goto :goto_0

    .line 1258
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 1261
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1262
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1263
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1264
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getThreadName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isExcluded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "exclusionList"    # Ljava/lang/String;
    .param p2, "urlDomain"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1186
    const/4 v1, 0x0

    .line 1187
    .local v1, "mParsedExclusionList":[Ljava/lang/String;
    if-nez p1, :cond_3

    .line 1188
    new-array v1, v5, [Ljava/lang/String;

    .line 1201
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    array-length v6, v1

    if-nez v6, :cond_5

    :cond_1
    move v4, v5

    .line 1210
    :cond_2
    :goto_0
    return v4

    .line 1191
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1192
    .local v3, "splitExclusionList":[Ljava/lang/String;
    array-length v6, v3

    mul-int/lit8 v6, v6, 0x2

    new-array v1, v6, [Ljava/lang/String;

    .line 1193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 1194
    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, "s":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1196
    :cond_4
    mul-int/lit8 v6, v0, 0x2

    aput-object v2, v1, v6

    .line 1197
    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 1193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1205
    .end local v0    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "splitExclusionList":[Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v6, v1

    if-ge v0, v6, :cond_6

    .line 1206
    aget-object v6, v1, v0

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v1, v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1205
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_6
    move v4, v5

    .line 1210
    goto :goto_0
.end method

.method public static isShipBuild()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1161
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1162
    .local v3, "sp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "get"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1163
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ro.product_ship"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "false"

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1164
    .local v2, "ret":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShipBuild "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1165
    const-string v6, "true"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1172
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "ret":Ljava/lang/String;
    :goto_0
    return v4

    .restart local v1    # "getMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "ret":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 1168
    goto :goto_0

    .line 1170
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    move v4, v5

    .line 1172
    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(ApacheHTTPLog):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1223
    .local v0, "logString":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1224
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->HTTPFILELOG:Z

    if-eqz v1, :cond_0

    .line 1225
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->logToFile(Ljava/lang/String;)V

    .line 1227
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(ApacheHTTPLog) This is just CallStack Trace Log:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/http/impl/client/CustomHttpClient;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "logString":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1236
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->HTTPFILELOG:Z

    if-eqz v1, :cond_0

    .line 1237
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->logToFile(Ljava/lang/String;)V

    .line 1239
    :cond_0
    return-void
.end method

.method private static logToFile(Ljava/lang/String;)V
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1285
    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->logFileLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 1286
    :try_start_0
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->fHttpFileLog:Ljava/io/BufferedWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1288
    :try_start_1
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getLogFileName()Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "fname":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getThreadName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(ApacheHTTPLog): create log file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->fHttpFileLog:Ljava/io/BufferedWriter;

    .line 1291
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->fDateFormat:Ljava/text/SimpleDateFormat;

    .line 1292
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->fHttpFileLog:Ljava/io/BufferedWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " start write http log for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1293
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->fHttpFileLog:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1300
    .end local v1    # "fname":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1301
    .local v2, "sBuf":Ljava/lang/StringBuffer;
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->fDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1302
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1303
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1304
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->fHttpFileLog:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1305
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->fHttpFileLog:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1310
    .end local v2    # "sBuf":Ljava/lang/StringBuffer;
    :goto_1
    :try_start_3
    monitor-exit v4

    .line 1311
    return-void

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getThreadName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(ApacheHTTPLog):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1310
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1308
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static reportSBUsage(J[J)V
    .locals 9
    .param p0, "threadID"    # J
    .param p2, "data"    # [J

    .prologue
    .line 1063
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 1066
    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v5, "reportSBUsage"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, [J

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1068
    .local v2, "reportSBUsage":Ljava/lang/reflect/Method;
    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_1

    .line 1070
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "SBServiceAPI: reportSBUsage"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v3, "sBuf":Ljava/lang/StringBuffer;
    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1072
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ",["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_0

    .line 1074
    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1076
    :cond_0
    const-string v4, "])"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1077
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    .end local v1    # "i":I
    .end local v2    # "reportSBUsage":Ljava/lang/reflect/Method;
    .end local v3    # "sBuf":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    return-void

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_1

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static submitMultiSocketData([J[J)V
    .locals 10
    .param p0, "lengths"    # [J
    .param p1, "times"    # [J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 843
    array-length v2, p0

    if-eq v2, v7, :cond_0

    array-length v2, p0

    if-lt v2, v3, :cond_5

    array-length v2, p1

    if-lt v2, v3, :cond_5

    .line 844
    :cond_0
    aget-wide v2, p0, v6

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    aget-wide v2, p0, v6

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1

    aget-wide v2, p0, v7

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1

    aget-wide v2, p1, v6

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1

    aget-wide v2, p1, v7

    cmp-long v2, v2, v8

    if-nez v2, :cond_3

    .line 845
    :cond_1
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "Not Proper data to be submitted, some value is 0"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 867
    :cond_2
    :goto_0
    return-void

    .line 849
    :cond_3
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 851
    sget-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v3, "submitMultiSocketData"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [J

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [J

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 852
    .local v1, "submitData":Ljava/lang/reflect/Method;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The method returned is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 854
    :cond_4
    sget-object v2, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 856
    .end local v1    # "submitData":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in submitMultiSocketData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 859
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 863
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    .line 864
    const-string v2, "Not Proper data to be submitted"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected autoEnableMultiRAT(ZI)I
    .locals 9
    .param p1, "bEnable"    # Z
    .param p2, "infID"    # I

    .prologue
    const/4 v4, 0x0

    .line 903
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 905
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v5, "autoEnableMultiRAT"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 907
    .local v1, "enableMultiRat":Ljava/lang/reflect/Method;
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 909
    .local v2, "success":I
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returned autoEnableMultiRAT() is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    .end local v1    # "enableMultiRat":Ljava/lang/reflect/Method;
    .end local v2    # "success":I
    :cond_0
    :goto_0
    return v2

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getSmartBondingData : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 915
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_1
    move v2, v4

    .line 918
    goto :goto_0
.end method

.method protected createAuthSchemeRegistry()Lorg/apache/http/auth/AuthSchemeRegistry;
    .locals 3

    .prologue
    .line 379
    new-instance v0, Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    .line 380
    .local v0, "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    const-string v1, "Basic"

    new-instance v2, Lorg/apache/http/impl/auth/BasicSchemeFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 381
    const-string v1, "Digest"

    new-instance v2, Lorg/apache/http/impl/auth/DigestSchemeFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 382
    return-object v0
.end method

.method protected createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 11

    .prologue
    .line 302
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 303
    .local v6, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 309
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    const/4 v4, 0x0

    .line 312
    .local v4, "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    const-string v7, "http.connection-manager.factory-object"

    invoke-interface {v5, v7}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    check-cast v4, Lorg/apache/http/conn/ClientConnectionManagerFactory;

    .line 314
    .restart local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    if-nez v4, :cond_0

    .line 315
    const-string v7, "http.connection-manager.factory-class-name"

    invoke-interface {v5, v7}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 320
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    check-cast v4, Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 331
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :cond_0
    if-eqz v4, :cond_1

    .line 332
    invoke-interface {v4, v5, v6}, Lorg/apache/http/conn/ClientConnectionManagerFactory;->newInstance(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    .line 336
    :goto_0
    return-object v2

    .line 321
    .end local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    .restart local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 322
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid class name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 323
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 324
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalAccessError;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 325
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 326
    .local v3, "ex":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/InstantiationError;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 334
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    .restart local v4    # "factory":Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :cond_1
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .end local v2    # "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-direct {v2, v7, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .restart local v2    # "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    goto :goto_0
.end method

.method public createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;
    .locals 14
    .param p1, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 517
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->copy()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRedirectHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v9

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v10

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;

    move-result-object v11

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/CustomHttpClient;->mydetermineParams(Lorg/apache/http/HttpRequest;)Lorg/apache/http/params/HttpParams;

    move-result-object v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/http/impl/client/AbstractHttpClient;->createClientRequestDirector(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/RequestDirector;

    move-result-object v13

    check-cast v13, Lorg/apache/http/impl/client/DefaultRequestDirector;

    .line 525
    .local v13, "director":Lorg/apache/http/impl/client/DefaultRequestDirector;
    return-object v13
.end method

.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object v0
.end method

.method protected createCookieSpecRegistry()Lorg/apache/http/cookie/CookieSpecRegistry;
    .locals 3

    .prologue
    .line 392
    new-instance v0, Lorg/apache/http/cookie/CookieSpecRegistry;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookieSpecRegistry;-><init>()V

    .line 393
    .local v0, "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    const-string v1, "best-match"

    new-instance v2, Lorg/apache/http/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BestMatchSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 394
    const-string v1, "compatibility"

    new-instance v2, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 395
    const-string v1, "netscape"

    new-instance v2, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 396
    const-string v1, "rfc2109"

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2109SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 397
    const-string v1, "rfc2965"

    new-instance v2, Lorg/apache/http/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2965SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lorg/apache/http/cookie/CookieSpecFactory;)V

    .line 398
    return-object v0
.end method

.method protected createCookieStore()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 472
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    return-object v0
.end method

.method protected createCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;
    .locals 1

    .prologue
    .line 482
    new-instance v0, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    return-object v0
.end method

.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 347
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    const-string v1, "http.cookie-store"

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    return-object v0
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 5

    .prologue
    .line 261
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 262
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 263
    const-string v3, "ISO-8859-1"

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 271
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 275
    const-string v3, "org.apache.http.client"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/http/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    move-result-object v2

    .line 277
    .local v2, "vi":Lorg/apache/http/util/VersionInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/http/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "release":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Apache-HttpClient/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (java 1.4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 282
    return-object v0

    .line 277
    .end local v1    # "release":Ljava/lang/String;
    :cond_0
    const-string v1, "UNAVAILABLE"

    goto :goto_0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 407
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 408
    .local v0, "httpproc":Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v1, Lorg/apache/http/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 410
    new-instance v1, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 411
    new-instance v1, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 413
    new-instance v1, Lorg/apache/http/protocol/RequestConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 414
    new-instance v1, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 415
    new-instance v1, Lorg/apache/http/protocol/RequestExpectContinue;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 417
    new-instance v1, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 418
    new-instance v1, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 420
    new-instance v1, Lorg/apache/http/client/protocol/RequestTargetAuthentication;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 421
    new-instance v1, Lorg/apache/http/client/protocol/RequestProxyAuthentication;

    invoke-direct {v1}, Lorg/apache/http/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 422
    return-object v0
.end method

.method protected createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-object v0
.end method

.method protected createHttpRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 3

    .prologue
    .line 495
    new-instance v0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method protected createProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 462
    new-instance v0, Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultProxyAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lorg/apache/http/impl/client/DefaultRedirectHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-object v0
.end method

.method protected createRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    return-object v0
.end method

.method protected createTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;
    .locals 1

    .prologue
    .line 452
    new-instance v0, Lorg/apache/http/impl/client/DefaultTargetAuthenticationHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultTargetAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;
    .locals 1

    .prologue
    .line 506
    new-instance v0, Lorg/apache/http/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultUserTokenHandler;-><init>()V

    return-object v0
.end method

.method protected getHttpProxy(I)[Ljava/lang/String;
    .locals 9
    .param p1, "netType"    # I

    .prologue
    .line 1091
    const/4 v3, 0x0

    .line 1093
    .local v3, "proxySettings":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 1095
    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v5, "getProxyInfo"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1097
    .local v2, "getProxyMethod":Ljava/lang/reflect/Method;
    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v2    # "getProxyMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v3

    .line 1098
    :catch_0
    move-exception v1

    .line 1099
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_0

    .line 1100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getSBUsuageStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1101
    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 6
    .param p1, "netType"    # I
    .param p2, "target"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 1113
    const/4 v1, 0x0

    .line 1115
    .local v1, "proxy":Lorg/apache/http/HttpHost;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/CustomHttpClient;->getHttpProxy(I)[Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, "proxySettings":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-nez v3, :cond_1

    .line 1118
    :cond_0
    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    .line 1135
    .end local v2    # "proxySettings":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1121
    .restart local v2    # "proxySettings":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->isExcluded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1122
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in the exclusion list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1124
    :cond_2
    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    goto :goto_0

    .line 1126
    :cond_3
    new-instance v1, Lorg/apache/http/HttpHost;

    .end local v1    # "proxy":Lorg/apache/http/HttpHost;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "http"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "proxy":Lorg/apache/http/HttpHost;
    goto :goto_0

    .line 1131
    .end local v1    # "proxy":Lorg/apache/http/HttpHost;
    .end local v2    # "proxySettings":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 1133
    :cond_4
    sget-object v1, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    .restart local v1    # "proxy":Lorg/apache/http/HttpHost;
    goto :goto_0
.end method

.method public getSBEnabled()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 667
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 669
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v5, "getSBEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 671
    .local v1, "getSBEnabled":Ljava/lang/reflect/Method;
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 672
    .local v2, "isSBEnabled":Z
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The getSBEnabled returned: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v1    # "getSBEnabled":Ljava/lang/reflect/Method;
    .end local v2    # "isSBEnabled":Z
    :cond_0
    :goto_0
    return v2

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getSBEnabled : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 678
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_1
    move v2, v4

    .line 680
    goto :goto_0
.end method

.method protected getSBUsageStatus(J)I
    .locals 8
    .param p1, "threadID"    # J

    .prologue
    .line 959
    const/4 v2, 0x2

    .line 962
    .local v2, "sbUsage":I
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 964
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v4, "getSBUsageStatus"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 966
    .local v1, "getSbUsageMethod":Ljava/lang/reflect/Method;
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 974
    .end local v1    # "getSbUsageMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v2

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    .line 970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getSBUsuageStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 971
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getSmartBondingData(I)[J
    .locals 14
    .param p1, "pid"    # I

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 875
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 877
    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v5, "getSmartBondingData"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 879
    .local v3, "getFastInterface":Ljava/lang/reflect/Method;
    sget-object v4, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move-object v0, v4

    check-cast v0, [J

    move-object v2, v0

    .line 881
    .local v2, "fastInterface":[J
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returned high throughput interface is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    aget-wide v6, v2, v4

    cmp-long v4, v6, v12

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    aget-wide v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    const-string v4, "WiFi"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 890
    .end local v2    # "fastInterface":[J
    .end local v3    # "getFastInterface":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-object v2

    .line 881
    .restart local v2    # "fastInterface":[J
    .restart local v3    # "getFastInterface":Ljava/lang/reflect/Method;
    :cond_1
    const-string v4, "LTE"

    goto :goto_0

    :cond_2
    const-string v4, "Error"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 884
    .end local v2    # "fastInterface":[J
    .end local v3    # "getFastInterface":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_3

    .line 886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getSmartBondingData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 887
    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    .line 890
    :cond_3
    new-array v2, v11, [J

    aput-wide v12, v2, v10

    goto :goto_1
.end method

.method protected mydetermineParams(Lorg/apache/http/HttpRequest;)Lorg/apache/http/params/HttpParams;
    .locals 7
    .param p1, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v2, 0x0

    .line 534
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/http/impl/client/ClientParamsStack;

    if-eqz v1, :cond_4

    .line 535
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/ClientParamsStack;

    move-object v0, v1

    check-cast v0, Lorg/apache/http/impl/client/ClientParamsStack;

    .line 536
    .local v0, "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    new-instance v5, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :goto_1
    invoke-virtual {v0}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v2

    :goto_2
    invoke-virtual {v0}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    if-nez v6, :cond_3

    :goto_3
    invoke-direct {v5, v1, v3, v4, v2}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    move-object v1, v5

    .line 543
    .end local v0    # "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    :goto_4
    return-object v1

    .line 536
    .restart local v0    # "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    goto :goto_3

    .line 543
    .end local v0    # "cp":Lorg/apache/http/impl/client/ClientParamsStack;
    :cond_4
    new-instance v1, Lorg/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v2}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    goto :goto_4
.end method

.method protected startSBDirectUsage(JJJLjava/lang/String;)Z
    .locals 8
    .param p1, "threadID"    # J
    .param p3, "fileSize"    # J
    .param p5, "startRange"    # J
    .param p7, "url"    # Ljava/lang/String;

    .prologue
    .line 1032
    const/4 v1, 0x0

    .line 1034
    .local v1, "sbUsage":Z
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 1036
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v4, "startSBUsage"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1038
    .local v2, "startSBUsage":Ljava/lang/reflect/Method;
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p7, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1040
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returned startSBUsage() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .end local v2    # "startSBUsage":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v1

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in startSBUsage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1044
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected startSBUsageURL(JJLjava/lang/String;)Z
    .locals 8
    .param p1, "threadID"    # J
    .param p3, "fileSize"    # J
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 934
    const/4 v1, 0x0

    .line 936
    .local v1, "sbUsage":Z
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 938
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v4, "startSBUsageURL"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 940
    .local v2, "sbUsageMethod":Ljava/lang/reflect/Method;
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p5, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 942
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returned startSBUsuage() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    .end local v2    # "sbUsageMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v1

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    .line 945
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in startSBUsuage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 946
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected stopSBUsage(J)I
    .locals 8
    .param p1, "threadID"    # J

    .prologue
    .line 983
    const/4 v1, 0x2

    .line 985
    .local v1, "sbUsage":I
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 987
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v4, "stopSBUsage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 989
    .local v2, "stopSbUsageMethod":Ljava/lang/reflect/Method;
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 991
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returned stopSBUsugae() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    .end local v2    # "stopSbUsageMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v1

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    .line 994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopSBUsage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 995
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected stopSBUsageWithReason(JI)I
    .locals 8
    .param p1, "threadID"    # J
    .param p3, "errorNo"    # I

    .prologue
    .line 1007
    const/4 v1, 0x2

    .line 1009
    .local v1, "sbUsage":I
    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->getService()V

    .line 1011
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v4, "stopSBUsageWithReason"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1013
    .local v2, "stopSBUsageWithReason":Ljava/lang/reflect/Method;
    sget-object v3, Lorg/apache/http/impl/client/CustomHttpClient;->sIConnectivityManager:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1015
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returned stopSBUsageWithReason("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    .end local v2    # "stopSBUsageWithReason":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v1

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_0

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopSBUsageWithReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    .line 1019
    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
