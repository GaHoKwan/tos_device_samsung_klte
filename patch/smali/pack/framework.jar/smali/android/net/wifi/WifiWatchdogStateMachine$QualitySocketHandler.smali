.class Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QualitySocketHandler"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mQCStartTime:J

.field private mRxBytesBeforeQC:J

.field private mRxPacketsBeforeQC:J

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v1, 0x0

    .line 1732
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 1733
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1726
    const-string v0, "WifiWatchdogStateMachine.QualitySocketHandler"

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    .line 1728
    iput-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 1729
    iput-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 1730
    iput-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    .line 1734
    return-void
.end method

.method private sendGetMethod(Ljava/net/Socket;ILjava/lang/String;I)V
    .locals 17
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "resolvedIp"    # I
    .param p3, "srcUrl"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 1943
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[URL] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_0
    const/4 v1, 0x0

    .line 1946
    .local v1, "addr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1947
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13300(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1951
    :goto_0
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addr : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, " (Proxy)"

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_1
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1954
    .local v11, "url":Ljava/net/URL;
    const/16 v8, 0x50

    .line 1955
    .local v8, "port":I
    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v8

    .line 1956
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v8

    .line 1957
    :cond_3
    const-string v12, "http"

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1958
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v13, "No http request!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    new-instance v12, Ljava/net/SocketException;

    invoke-direct {v12}, Ljava/net/SocketException;-><init>()V

    throw v12

    .line 1949
    .end local v8    # "port":I
    .end local v11    # "url":Ljava/net/URL;
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 1951
    :cond_5
    const-string v12, " "

    goto :goto_1

    .line 1962
    .restart local v8    # "port":I
    .restart local v11    # "url":Ljava/net/URL;
    :cond_6
    const-string v3, "/"

    .line 1963
    .local v3, "file":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1964
    const-string v12, ""

    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1965
    const-string v12, "http://%s%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1973
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v12

    invoke-static {v12}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v4

    .line 1975
    .local v4, "ipaddr":Ljava/net/InetAddress;
    if-nez p1, :cond_b

    .line 1976
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v13, "socket closed before connect"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_8
    new-instance v12, Ljava/net/SocketException;

    invoke-direct {v12}, Ljava/net/SocketException;-><init>()V

    throw v12

    .line 1967
    .end local v4    # "ipaddr":Ljava/net/InetAddress;
    :cond_9
    const-string v12, "http://%s/"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1969
    :cond_a
    const-string v12, ""

    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1970
    invoke-virtual {v11}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1980
    .restart local v4    # "ipaddr":Ljava/net/InetAddress;
    :cond_b
    const-string v12, "wlan0"

    invoke-static {v12}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 1981
    const-string v12, "wlan0"

    invoke-static {v12}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 1983
    new-instance v12, Ljava/net/InetSocketAddress;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 1986
    :try_start_0
    sget-object v12, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v13

    sget v14, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v15, Llibcore/io/OsConstants;->SO_BINDTODEVICE:I

    const-string v16, "wlan0"

    invoke-interface/range {v12 .. v16}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/16 v10, 0x1388

    .line 1993
    .local v10, "timeout":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13502(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1994
    new-instance v12, Ljava/net/InetSocketAddress;

    invoke-direct {v12, v1, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1995
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v13, "socket Connected!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 1998
    .local v5, "message":Landroid/os/Message;
    move/from16 v0, p4

    iput v0, v5, Landroid/os/Message;->arg1:I

    .line 1999
    if-nez p4, :cond_11

    .line 2000
    const v12, 0x2102f

    iput v12, v5, Landroid/os/Message;->what:I

    .line 2001
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v12

    const-wide/16 v13, 0xbb8

    invoke-virtual {v12, v5, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2010
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 2011
    .local v9, "theOutput":Ljava/io/OutputStream;
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2012
    .local v7, "out":Ljava/io/OutputStreamWriter;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_d

    .line 2013
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "ro.product.model"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13702(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 2015
    :cond_d
    const/4 v6, 0x0

    .line 2016
    .local v6, "modelName":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2017
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13800(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 2018
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13800(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 2027
    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GET "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " HTTP/1.1\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2028
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "User-Agent: Dalvik/1.6.0 (Linux; U; Android 4.3; "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Build/JSS15J)\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2029
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2030
    const-string v12, "Connection: close\r\n"

    invoke-virtual {v7, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2033
    const-string v12, "\r\n"

    invoke-virtual {v7, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2035
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 2037
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v13, "socket.sendGetMethod!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    :cond_e
    return-void

    .line 1987
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "modelName":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/OutputStreamWriter;
    .end local v9    # "theOutput":Ljava/io/OutputStream;
    .end local v10    # "timeout":I
    :catch_0
    move-exception v2

    .line 1988
    .local v2, "errnoException":Llibcore/io/ErrnoException;
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v2}, Llibcore/io/ErrnoException;->printStackTrace()V

    .line 1989
    :cond_f
    new-instance v12, Ljava/net/SocketException;

    invoke-direct {v12}, Ljava/net/SocketException;-><init>()V

    throw v12

    .line 1992
    .end local v2    # "errnoException":Llibcore/io/ErrnoException;
    :cond_10
    const/16 v10, 0xbb8

    goto/16 :goto_3

    .line 2003
    .restart local v5    # "message":Landroid/os/Message;
    .restart local v10    # "timeout":I
    :cond_11
    const v12, 0x21024

    iput v12, v5, Landroid/os/Message;->what:I

    .line 2004
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I
    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v12, v5, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2005
    const-string v12, "wlan0"

    invoke-static {v12}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2006
    const-string v12, "wlan0"

    invoke-static {v12}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2007
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    goto/16 :goto_4

    .line 2020
    .restart local v6    # "modelName":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/OutputStreamWriter;
    .restart local v9    # "theOutput":Ljava/io/OutputStream;
    :cond_12
    const-string v6, "GT-I9500"

    goto/16 :goto_5

    .line 2022
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_14

    .line 2023
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13700(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 2025
    :cond_14
    const-string v6, "GT-I9500"

    goto/16 :goto_5
.end method

.method private sendGetMethod(Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 21
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "srcUrl"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    .line 2043
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[URL] "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :cond_0
    const-string v18, "wlan0"

    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2045
    const-string v18, "wlan0"

    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2047
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 2048
    .local v12, "message":Landroid/os/Message;
    const v18, 0x21025

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 2049
    move/from16 v0, p3

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v18

    const-wide/16 v19, 0xbb8

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v0, v12, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2052
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2053
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 2054
    .local v4, "addrList":[Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v18

    const v19, 0x21025

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2056
    const/4 v10, 0x0

    .line 2057
    .local v10, "ipv4Count":I
    move-object v5, v4

    .local v5, "arr$":[Ljava/net/InetAddress;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v11, :cond_2

    aget-object v8, v5, v7

    .line 2058
    .local v8, "inet":Ljava/net/InetAddress;
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "inet : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :cond_1
    instance-of v0, v8, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 2057
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2062
    .end local v8    # "inet":Ljava/net/InetAddress;
    :cond_2
    if-nez v10, :cond_3

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "There is no an IPv4 address in the array of IP addresses"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    new-instance v18, Ljava/net/UnknownHostException;

    invoke-direct/range {v18 .. v18}, Ljava/net/UnknownHostException;-><init>()V

    throw v18

    .line 2068
    :cond_3
    new-instance v15, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v15, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 2069
    .local v15, "rand":Ljava/util/Random;
    invoke-virtual {v15, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    aget-object v3, v4, v18

    .line 2070
    .local v3, "addr":Ljava/net/InetAddress;
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "addr : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_4
    const/16 v14, 0x50

    .line 2073
    .local v14, "port":I
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getPort()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getPort()I

    move-result v14

    .line 2074
    :cond_5
    const-string v18, "http"

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "No http request!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    new-instance v18, Ljava/net/SocketException;

    invoke-direct/range {v18 .. v18}, Ljava/net/SocketException;-><init>()V

    throw v18

    .line 2078
    :cond_6
    const-string v6, "/"

    .line 2079
    .local v6, "file":Ljava/lang/String;
    const-string v18, ""

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    .line 2081
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    .line 2083
    .local v9, "ipaddr":Ljava/net/InetAddress;
    if-nez p1, :cond_9

    .line 2084
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "socket closed before connect"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_8
    new-instance v18, Ljava/net/SocketException;

    invoke-direct/range {v18 .. v18}, Ljava/net/SocketException;-><init>()V

    throw v18

    .line 2088
    :cond_9
    const-string v18, "wlan0"

    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2089
    const-string v18, "wlan0"

    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2091
    new-instance v18, Ljava/net/InetSocketAddress;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v9, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 2092
    new-instance v18, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v19, 0xbb8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 2093
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "socket Connected!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 2096
    const v18, 0x21024

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 2097
    move/from16 v0, p3

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 2098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I
    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v0, v12, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2099
    const-string v18, "wlan0"

    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    .line 2100
    const-string v18, "wlan0"

    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    .line 2101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    .line 2103
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 2104
    .local v16, "theOutput":Ljava/io/OutputStream;
    new-instance v13, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2105
    .local v13, "out":Ljava/io/OutputStreamWriter;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "GET "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " HTTP/1.1\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2106
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "HOST: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2107
    const-string v18, "Connection: close\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2110
    const-string v18, "\r\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2112
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 2114
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "socket.sendGetMethod!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_b
    return-void
.end method


# virtual methods
.method getRxBytesDuringQC()I
    .locals 5

    .prologue
    .line 1743
    const-string v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 1744
    .local v0, "bytes":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRxBytesDuringQC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_0
    return v0
.end method

.method getRxPacketsDuringQC()I
    .locals 5

    .prologue
    .line 1737
    const-string v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 1738
    .local v0, "packets":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRxPacketsDuringQC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 40
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1750
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v34, v0

    sparse-switch v34, :sswitch_data_0

    .line 1938
    :cond_0
    :goto_0
    return-void

    .line 1752
    :sswitch_0
    const/16 v22, 0x0

    .line 1753
    .local v22, "needSkip":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 1754
    .local v17, "id":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    .line 1755
    .local v19, "ip":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 1756
    .local v24, "qcUrl":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[QUALITY_CHECK_START] id : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[QUALITY_CHECK_START] id : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/Toast;->show()V

    .line 1759
    :cond_2
    const/16 v28, 0x0

    .line 1760
    .local v28, "rtt":I
    const/16 v27, 0x0

    .line 1762
    .local v27, "resultBytes":I
    const/16 v34, 0x1

    move/from16 v0, v17

    move/from16 v1, v34

    if-lt v0, v1, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    if-eqz v34, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->isClosed()Z

    move-result v34

    if-nez v34, :cond_7

    .line 1763
    :cond_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_4

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "(mQCSocket != null) : "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    if-eqz v34, :cond_6

    const/16 v34, 0x1

    :goto_1
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, " mQCSocket.isClosed() : "

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v36, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v36 .. v36}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/net/Socket;->isClosed()Z

    move-result v36

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1766
    :cond_4
    const/16 v22, 0x1

    .line 1838
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v23

    .line 1839
    .local v23, "ongoingId":I
    if-eqz v22, :cond_46

    .line 1840
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "couldn\'t test quality by problem on using socket!"

    :goto_3
    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1764
    .end local v23    # "ongoingId":I
    :cond_6
    const/16 v34, 0x0

    goto :goto_1

    .line 1768
    :cond_7
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCRepeat:I
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12700(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_5

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Ljava/net/Socket;

    invoke-direct/range {v35 .. v35}, Ljava/net/Socket;-><init>()V

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v19

    move-object/from16 v3, v24

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;I)V

    .line 1772
    const/16 v34, 0x1400

    move/from16 v0, v34

    new-array v7, v0, [C

    .line 1773
    .local v7, "buffer":[C
    const/16 v20, 0x0

    .line 1774
    .local v20, "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 1775
    .local v18, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v34, Ljava/io/InputStreamReader;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1776
    .local v6, "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .line 1777
    .local v21, "line":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "response : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_8
    const-string v34, "301"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    const-string v34, "302"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    const-string v34, "303"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_11

    .line 1780
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21024

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1781
    const/16 v25, 0x0

    .line 1783
    .local v25, "redirectURL":Ljava/lang/String;
    :cond_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_c

    .line 1785
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "header : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_a

    const/16 v34, 0x0

    const/16 v35, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "Location:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 1788
    const/16 v34, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 1789
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "redirectURL : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->isConnected()Z

    move-result v34

    if-eqz v34, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->shutdownInput()V

    .line 1794
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->close()V

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1796
    if-nez v25, :cond_10

    .line 1797
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "couldn\'t get redirect URL from response!"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_e
    new-instance v34, Ljava/net/SocketException;

    invoke-direct/range {v34 .. v34}, Ljava/net/SocketException;-><init>()V

    throw v34
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1827
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "buffer":[C
    .end local v16    # "i":I
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v20    # "length":I
    .end local v21    # "line":Ljava/lang/String;
    .end local v25    # "redirectURL":Ljava/lang/String;
    :catch_0
    move-exception v32

    .line 1828
    .local v32, "ste":Ljava/net/SocketTimeoutException;
    :try_start_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "SocketTimeoutException"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :cond_f
    const-string v34, "wlan0"

    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    move-wide/from16 v36, v0

    sub-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v34, v0

    div-int/lit8 v27, v34, 0x3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v23

    .line 1839
    .restart local v23    # "ongoingId":I
    if-eqz v22, :cond_31

    .line 1840
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "couldn\'t test quality by problem on using socket!"

    goto/16 :goto_3

    .line 1801
    .end local v23    # "ongoingId":I
    .end local v32    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "buffer":[C
    .restart local v16    # "i":I
    .restart local v18    # "in":Ljava/io/InputStream;
    .restart local v20    # "length":I
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v25    # "redirectURL":Ljava/lang/String;
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21029

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    .line 1802
    const/16 v22, 0x1

    .line 1803
    goto/16 :goto_2

    .line 1805
    .end local v25    # "redirectURL":Ljava/lang/String;
    :cond_11
    const/16 v30, 0x1400

    .line 1806
    .local v30, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12800(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytes:I
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v33

    .line 1807
    .local v33, "targetBytes":I
    :goto_5
    move/from16 v26, v33

    .line 1808
    .local v26, "remainBytes":I
    :cond_12
    :goto_6
    const/16 v34, 0x0

    move/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/BufferedReader;->read([CII)I

    move-result v12

    .local v12, "count":I
    const/16 v34, -0x1

    move/from16 v0, v34

    if-eq v12, v0, :cond_14

    .line 1809
    sub-int v26, v26, v12

    .line 1810
    add-int v20, v20, v12

    .line 1811
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "length : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " count: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_13
    if-gtz v26, :cond_1b

    .line 1815
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    move-wide/from16 v36, v0

    sub-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v34, v0

    add-int v28, v28, v34

    .line 1816
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "rtt : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " ms"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v8

    .line 1818
    .local v8, "bytes":I
    move/from16 v0, v20

    move/from16 v1, v33

    if-lt v0, v1, :cond_16

    .line 1819
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x5cc

    move/from16 v34, v0

    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x596

    move/from16 v34, v0

    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v34, v0

    div-int v34, v34, v28

    add-int v27, v27, v34

    .line 1820
    :cond_16
    move/from16 v0, v27

    if-ge v0, v8, :cond_17

    move/from16 v27, v8

    .line 1821
    :cond_17
    move/from16 v0, v27

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    .line 1822
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "Before socket timeout, all data had been received successfully."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_18
    move/from16 v27, v33

    .line 1768
    :cond_19
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 1806
    .end local v8    # "bytes":I
    .end local v12    # "count":I
    .end local v26    # "remainBytes":I
    .end local v33    # "targetBytes":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12900(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v33

    goto/16 :goto_5

    .line 1813
    .restart local v12    # "count":I
    .restart local v26    # "remainBytes":I
    .restart local v33    # "targetBytes":I
    :cond_1b
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_12

    move/from16 v30, v26

    goto/16 :goto_6

    .line 1830
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "buffer":[C
    .end local v12    # "count":I
    .end local v16    # "i":I
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v20    # "length":I
    .end local v21    # "line":Ljava/lang/String;
    .end local v26    # "remainBytes":I
    .end local v30    # "size":I
    .end local v33    # "targetBytes":I
    :catch_1
    move-exception v13

    .line 1831
    .local v13, "ee":Ljava/lang/Exception;
    :try_start_4
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Exception occured : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_1c
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_1d

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1833
    :cond_1d
    const/16 v27, -0x1

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v23

    .line 1839
    .restart local v23    # "ongoingId":I
    if-eqz v22, :cond_38

    .line 1840
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "couldn\'t test quality by problem on using socket!"

    goto/16 :goto_3

    .line 1834
    .end local v13    # "ee":Ljava/lang/Exception;
    .end local v23    # "ongoingId":I
    :catch_2
    move-exception v5

    .line 1835
    .local v5, "ae":Ljava/lang/AssertionError;
    :try_start_5
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "AssertionError occured : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1836
    :cond_1e
    const/16 v27, -0x1

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v23

    .line 1839
    .restart local v23    # "ongoingId":I
    if-eqz v22, :cond_3f

    .line 1840
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "couldn\'t test quality by problem on using socket!"

    goto/16 :goto_3

    .line 1847
    .end local v5    # "ae":Ljava/lang/AssertionError;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v35

    if-eqz v35, :cond_21

    .line 1849
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->isConnected()Z

    move-result v35

    if-eqz v35, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->shutdownInput()V

    .line 1850
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    .line 1854
    :cond_21
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v35 .. v36}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1855
    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v35

    const v36, 0x21029

    invoke-virtual/range {v35 .. v36}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v35

    if-nez v35, :cond_30

    .line 1857
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v35

    if-eqz v35, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "send qc result...id:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v35

    const v36, 0x21027

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v27

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    .line 1862
    :cond_23
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v35

    const v36, 0x21025

    invoke-virtual/range {v35 .. v36}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v35

    const v36, 0x21024

    invoke-virtual/range {v35 .. v36}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1838
    throw v34

    .line 1868
    .end local v17    # "id":I
    .end local v19    # "ip":I
    .end local v22    # "needSkip":Z
    .end local v23    # "ongoingId":I
    .end local v24    # "qcUrl":Ljava/lang/String;
    .end local v27    # "resultBytes":I
    .end local v28    # "rtt":I
    :sswitch_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "[CONNECT_CAPTIVE_PORTAL]"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_24
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 1870
    .local v9, "captivePortalIp":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 1871
    .local v10, "captivePortalUrl":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1872
    .local v15, "firstLine":Ljava/lang/String;
    const/16 v31, -0x1

    .line 1873
    .local v31, "statusCode":I
    const/16 v29, 0x0

    .line 1876
    .local v29, "sameLocation":Z
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Ljava/net/Socket;

    invoke-direct/range {v35 .. v35}, Ljava/net/Socket;-><init>()V

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v9, v10, v2}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;I)V

    .line 1878
    const/16 v34, 0x32

    move/from16 v0, v34

    new-array v7, v0, [C

    .line 1879
    .restart local v7    # "buffer":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 1880
    .restart local v18    # "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v34, Ljava/io/InputStreamReader;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1881
    .restart local v6    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 1882
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0xc

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_29

    .line 1883
    const/16 v34, 0x9

    const/16 v35, 0xc

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1884
    .local v11, "code":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "response code : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1885
    :cond_25
    const/16 v34, 0x64

    move/from16 v0, v34

    if-lt v11, v0, :cond_29

    const/16 v34, 0x3e7

    move/from16 v0, v34

    if-ge v11, v0, :cond_29

    .line 1886
    move/from16 v31, v11

    .line 1887
    const/16 v21, 0x0

    .line 1888
    .restart local v21    # "line":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1890
    .restart local v25    # "redirectURL":Ljava/lang/String;
    :cond_26
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_28

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_28

    .line 1892
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "header : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_27
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_26

    const/16 v34, 0x0

    const/16 v35, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    const-string v35, "Location:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_26

    .line 1895
    const/16 v34, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 1896
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "redirectURL : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_28
    if-eqz v25, :cond_29

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "same Location : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/16 v29, 0x1

    .line 1907
    .end local v11    # "code":I
    .end local v21    # "line":Ljava/lang/String;
    .end local v25    # "redirectURL":Ljava/lang/String;
    :cond_29
    if-gez v31, :cond_4f

    new-instance v34, Ljava/net/SocketException;

    invoke-direct/range {v34 .. v34}, Ljava/net/SocketException;-><init>()V

    throw v34
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1908
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "buffer":[C
    .end local v18    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v14

    .line 1909
    .local v14, "eee":Ljava/lang/Exception;
    :try_start_8
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Exception occured : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_2a
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v34

    if-eqz v34, :cond_2b

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 1911
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v34

    const v35, 0x2102f

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v34

    const v35, 0x2102f

    const/16 v36, 0x0

    const/16 v37, -0x1

    invoke-static/range {v34 .. v37}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    if-eqz v34, :cond_0

    .line 1916
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->isConnected()Z

    move-result v34

    if-eqz v34, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->shutdownInput()V

    .line 1917
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1920
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v34

    if-eqz v34, :cond_0

    if-lez v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v34

    const v35, 0x2102f

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->hasMessages(I)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v35

    const v36, 0x2102e

    if-eqz v29, :cond_4e

    const/16 v34, 0x1

    :goto_a
    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v31

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v34

    .end local v14    # "eee":Ljava/lang/Exception;
    :goto_b
    const v35, 0x2102f

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1914
    :catchall_0
    move-exception v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v35

    if-eqz v35, :cond_2e

    .line 1916
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->isConnected()Z

    move-result v35

    if-eqz v35, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->shutdownInput()V

    .line 1917
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1920
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v35

    if-eqz v35, :cond_2e

    if-lez v31, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v35

    const v36, 0x2102f

    invoke-virtual/range {v35 .. v36}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->hasMessages(I)Z

    move-result v35

    if-eqz v35, :cond_2e

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v36

    const v37, 0x2102e

    if-eqz v29, :cond_4d

    const/16 v35, 0x1

    :goto_d
    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v31

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v35

    const v36, 0x2102f

    invoke-virtual/range {v35 .. v36}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 1914
    :cond_2e
    throw v34

    .line 1838
    .end local v9    # "captivePortalIp":I
    .end local v10    # "captivePortalUrl":Ljava/lang/String;
    .end local v15    # "firstLine":Ljava/lang/String;
    .end local v29    # "sameLocation":Z
    .end local v31    # "statusCode":I
    .restart local v17    # "id":I
    .restart local v19    # "ip":I
    .restart local v22    # "needSkip":Z
    .restart local v24    # "qcUrl":Ljava/lang/String;
    .restart local v27    # "resultBytes":I
    .restart local v28    # "rtt":I
    :catchall_1
    move-exception v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v35, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v23

    .line 1839
    .restart local v23    # "ongoingId":I
    if-eqz v22, :cond_2f

    .line 1840
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "couldn\'t test quality by problem on using socket!"

    goto/16 :goto_3

    .line 1842
    :cond_2f
    if-nez v23, :cond_1f

    .line 1843
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "quality id["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] was already timed out!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    :goto_e
    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1860
    :cond_30
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v35

    if-eqz v35, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "[id:%d, ongoingId:%d] Skip sending result"

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1842
    .restart local v32    # "ste":Ljava/net/SocketTimeoutException;
    :cond_31
    if-nez v23, :cond_32

    .line 1843
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "quality id["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] was already timed out!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto :goto_e

    .line 1847
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    if-eqz v34, :cond_34

    .line 1849
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->isConnected()Z

    move-result v34

    if-eqz v34, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->shutdownInput()V

    .line 1850
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 1854
    :cond_34
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1855
    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21029

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v34

    if-nez v34, :cond_37

    .line 1857
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "send qc result...id:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21027

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v27

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    .line 1862
    :cond_36
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21025

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    .end local v32    # "ste":Ljava/net/SocketTimeoutException;
    :goto_11
    const v35, 0x21024

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1860
    .restart local v32    # "ste":Ljava/net/SocketTimeoutException;
    :cond_37
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "[id:%d, ongoingId:%d] Skip sending result"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1842
    .end local v32    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v13    # "ee":Ljava/lang/Exception;
    :cond_38
    if-nez v23, :cond_39

    .line 1843
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "quality id["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] was already timed out!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_e

    .line 1847
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    if-eqz v34, :cond_3b

    .line 1849
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->isConnected()Z

    move-result v34

    if-eqz v34, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->shutdownInput()V

    .line 1850
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 1854
    :cond_3b
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1855
    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21029

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v34

    if-nez v34, :cond_3e

    .line 1857
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "send qc result...id:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21027

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v27

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    .line 1862
    :cond_3d
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21025

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    goto/16 :goto_11

    .line 1860
    :cond_3e
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "[id:%d, ongoingId:%d] Skip sending result"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1842
    .end local v13    # "ee":Ljava/lang/Exception;
    .restart local v5    # "ae":Ljava/lang/AssertionError;
    :cond_3f
    if-nez v23, :cond_40

    .line 1843
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "quality id["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] was already timed out!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_e

    .line 1847
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    if-eqz v34, :cond_42

    .line 1849
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->isConnected()Z

    move-result v34

    if-eqz v34, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->shutdownInput()V

    .line 1850
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 1854
    :cond_42
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1855
    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21029

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v34

    if-nez v34, :cond_45

    .line 1857
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "send qc result...id:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21027

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v27

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    .line 1862
    :cond_44
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21025

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    goto/16 :goto_11

    .line 1860
    :cond_45
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "[id:%d, ongoingId:%d] Skip sending result"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1842
    .end local v5    # "ae":Ljava/lang/AssertionError;
    :cond_46
    if-nez v23, :cond_47

    .line 1843
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "quality id["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] was already timed out!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_e

    .line 1847
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    if-eqz v34, :cond_49

    .line 1849
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->isConnected()Z

    move-result v34

    if-eqz v34, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->shutdownInput()V

    .line 1850
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 1854
    :cond_49
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 1855
    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21029

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v34

    if-nez v34, :cond_4c

    .line 1857
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "send qc result...id:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21027

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v27

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    .line 1862
    :cond_4b
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    const v35, 0x21025

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v34

    goto/16 :goto_11

    .line 1860
    :cond_4c
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v34

    if-eqz v34, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "[id:%d, ongoingId:%d] Skip sending result"

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1925
    .end local v17    # "id":I
    .end local v19    # "ip":I
    .end local v22    # "needSkip":Z
    .end local v23    # "ongoingId":I
    .end local v24    # "qcUrl":Ljava/lang/String;
    .end local v27    # "resultBytes":I
    .end local v28    # "rtt":I
    .restart local v9    # "captivePortalIp":I
    .restart local v10    # "captivePortalUrl":Ljava/lang/String;
    .restart local v15    # "firstLine":Ljava/lang/String;
    .restart local v29    # "sameLocation":Z
    .restart local v31    # "statusCode":I
    :cond_4d
    const/16 v35, 0x0

    goto/16 :goto_d

    .restart local v14    # "eee":Ljava/lang/Exception;
    :cond_4e
    const/16 v34, 0x0

    goto/16 :goto_a

    .line 1914
    .end local v14    # "eee":Ljava/lang/Exception;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "buffer":[C
    .restart local v18    # "in":Ljava/io/InputStream;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    if-eqz v34, :cond_0

    .line 1916
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->isConnected()Z

    move-result v34

    if-eqz v34, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->shutdownInput()V

    .line 1917
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 1920
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v34

    if-eqz v34, :cond_0

    if-lez v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v34

    const v35, 0x2102f

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->hasMessages(I)Z

    move-result v34

    if-eqz v34, :cond_0

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v35

    const v36, 0x2102e

    if-eqz v29, :cond_51

    const/16 v34, 0x1

    :goto_19
    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v31

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/Message;->sendToTarget()V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v34, v0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static/range {v34 .. v34}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v34

    goto/16 :goto_b

    .line 1925
    :cond_51
    const/16 v34, 0x0

    goto :goto_19

    .line 1918
    :catch_4
    move-exception v34

    goto :goto_18

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "buffer":[C
    .end local v18    # "in":Ljava/io/InputStream;
    .restart local v14    # "eee":Ljava/lang/Exception;
    :catch_5
    move-exception v34

    goto/16 :goto_9

    .end local v14    # "eee":Ljava/lang/Exception;
    :catch_6
    move-exception v35

    goto/16 :goto_c

    .line 1851
    .end local v9    # "captivePortalIp":I
    .end local v10    # "captivePortalUrl":Ljava/lang/String;
    .end local v15    # "firstLine":Ljava/lang/String;
    .end local v29    # "sameLocation":Z
    .end local v31    # "statusCode":I
    .restart local v17    # "id":I
    .restart local v19    # "ip":I
    .restart local v22    # "needSkip":Z
    .restart local v23    # "ongoingId":I
    .restart local v24    # "qcUrl":Ljava/lang/String;
    .restart local v27    # "resultBytes":I
    .restart local v28    # "rtt":I
    :catch_7
    move-exception v34

    goto/16 :goto_16

    .restart local v5    # "ae":Ljava/lang/AssertionError;
    :catch_8
    move-exception v34

    goto/16 :goto_14

    .end local v5    # "ae":Ljava/lang/AssertionError;
    .restart local v13    # "ee":Ljava/lang/Exception;
    :catch_9
    move-exception v34

    goto/16 :goto_12

    .end local v13    # "ee":Ljava/lang/Exception;
    .restart local v32    # "ste":Ljava/net/SocketTimeoutException;
    :catch_a
    move-exception v34

    goto/16 :goto_f

    .end local v32    # "ste":Ljava/net/SocketTimeoutException;
    :catch_b
    move-exception v35

    goto/16 :goto_7

    .line 1750
    nop

    :sswitch_data_0
    .sparse-switch
        0x21026 -> :sswitch_0
        0x2102d -> :sswitch_1
    .end sparse-switch
.end method
