.class Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalHandler"
.end annotation


# static fields
.field private static final CAPTIVE_PORTAL_AUTH_WALKTIME:I = 0x1d4c0

.field private static final CAPTIVE_PORTAL_CHECK_AUTH_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_CHECK_AUTO_JOIN_PERIOD:I = 0x1388

.field private static final CAPTIVE_PORTAL_CHECK_PERIOD:I = 0x2710

.field private static final CAPTIVE_PORTAL_URL:Ljava/lang/String; = "http://clients3.google.com/generate_204"

.field private static final NEXT_CHECK_TIME:I = 0x927c0

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.CaptivePortalHandler"


# instance fields
.field private mAuthCheckStartTime:J

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mFirstPortalDnsRequest:Z

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field private mStoppedByScan:Z

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3077
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 3078
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3068
    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 3070
    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 3072
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 3074
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    .line 3075
    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    .line 3079
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalDnsResolver"

    invoke-direct {v0, p1, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    .line 3080
    return-void
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 3056
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    .prologue
    .line 3056
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->notifyDisconnect()V

    return-void
.end method

.method private checkCaptivePortal(Landroid/os/Handler;)V
    .locals 4
    .param p1, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 3097
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "[checkCaptivePortal]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    :cond_0
    if-eqz p1, :cond_2

    .line 3099
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 3100
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->captivePortalCheckException()Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3101
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v2, 0xe

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3102
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3103
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v1, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3104
    if-eq p1, p0, :cond_3

    .line 3105
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3106
    .local v0, "message":Landroid/os/Message;
    const v1, 0x2102c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3107
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 3108
    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3134
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 3114
    :cond_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "Abnormal request for checking captive portal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3118
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 3119
    const-string v1, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v2, "already checking the captive portal!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    if-ne p1, p0, :cond_1

    .line 3121
    const v1, 0x2102a

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3126
    :cond_4
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 3128
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3129
    const v1, 0x21030

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3133
    :cond_5
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->connectCaptivePortal()V

    goto :goto_0
.end method

.method private connectCaptivePortal()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3137
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[connectCaptivePortal]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 3139
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 3142
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://clients3.google.com/generate_204"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3143
    .local v1, "url":Ljava/net/URL;
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    .line 3144
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v3, 0x2

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3145
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3146
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3149
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 3150
    .local v0, "ie":Ljava/io/IOException;
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v3, "couldn\'t resolve a URL : http://clients3.google.com/generate_204"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$16900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3151
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # operator++ for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6108(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 3152
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3153
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3154
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v2

    if-nez v2, :cond_1

    .line 3155
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v3, 0x4

    iput v3, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 3156
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 3167
    .end local v0    # "ie":Ljava/io/IOException;
    :cond_2
    :goto_0
    return-void

    .line 3148
    .restart local v1    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v3, "[DNS query requested!]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3158
    .end local v1    # "url":Ljava/net/URL;
    .restart local v0    # "ie":Ljava/io/IOException;
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v8, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 3159
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v3, 0x6

    iput v3, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 3160
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iput v4, v2, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 3161
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3162
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v2, v7, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_0
.end method

.method private getResult()Z
    .locals 1

    .prologue
    .line 3093
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->isCaptivePortal()Z

    move-result v0

    return v0
.end method

.method private isCaptivePortal()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 3170
    const/4 v4, 0x0

    .line 3172
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v7, "Checking http://clients3.google.com/generate_204"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v5, "http://clients3.google.com/generate_204"

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3175
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 3176
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 3177
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3178
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 3179
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 3180
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 3182
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 3183
    .local v2, "responseCode":I
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Captive Portal response : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3184
    :cond_1
    const/16 v5, 0xcc

    if-eq v2, v5, :cond_3

    const/4 v5, 0x1

    .line 3189
    :goto_0
    if-eqz v4, :cond_2

    .line 3190
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 3187
    .end local v2    # "responseCode":I
    .end local v3    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    return v5

    .restart local v2    # "responseCode":I
    .restart local v3    # "url":Ljava/net/URL;
    :cond_3
    move v5, v6

    .line 3184
    goto :goto_0

    .line 3185
    .end local v2    # "responseCode":I
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 3186
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probably not a portal: exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3189
    :cond_4
    if-eqz v4, :cond_5

    .line 3190
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move v5, v6

    .line 3187
    goto :goto_1

    .line 3189
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_6

    .line 3190
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 3189
    :cond_6
    throw v5
.end method

.method private notifyDisconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3083
    const v0, 0x2102a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 3084
    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 3085
    iput-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 3086
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 3087
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 3088
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14300(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 3089
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3090
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3197
    const/4 v9, -0x1

    .line 3198
    .local v9, "result":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3199
    .local v4, "now":J
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x1

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 3200
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x6

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 3202
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 3482
    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignore msg id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_0
    :goto_0
    return-void

    .line 3204
    :sswitch_0
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[RESUME_CAPTIVE_PORTAL_CHECK]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    :cond_1
    const v12, 0x21030

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 3206
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    .line 3207
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->connectCaptivePortal()V

    goto :goto_0

    .line 3212
    :sswitch_1
    const v12, 0x2102a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 3213
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_0

    .line 3214
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[CAPTIVE_PORTAL_CHECK_STATE]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_3

    .line 3218
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 3221
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V

    goto :goto_0

    .line 3225
    :sswitch_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v2

    .line 3227
    .local v2, "dnsResult":I
    const/4 v12, 0x2

    if-ne v2, v12, :cond_5

    .line 3228
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3232
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3233
    const/4 v7, 0x0

    .line 3234
    .local v7, "resolvedIP":Ljava/net/InetAddress;
    const/4 v12, 0x4

    if-ne v2, v12, :cond_f

    .line 3235
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v12, :cond_d

    .line 3236
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v13, "WifiWatchdogStateMachine.CaptivePortalHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[mPreviousPrivateIP] : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " [msg.obj] : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/net/InetAddress;

    check-cast v12, Ljava/net/InetAddress;

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 3239
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 3241
    const/4 v9, 0x2

    .line 3285
    :cond_8
    :goto_1
    const/4 v12, 0x1

    if-ne v2, v12, :cond_14

    .line 3286
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 3287
    if-nez v7, :cond_9

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v7    # "resolvedIP":Ljava/net/InetAddress;
    check-cast v7, Ljava/net/InetAddress;

    .line 3288
    .restart local v7    # "resolvedIP":Ljava/net/InetAddress;
    :cond_9
    instance-of v12, v7, Ljava/net/Inet4Address;

    if-eqz v12, :cond_13

    .line 3289
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DNS Response SELECTED:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3290
    :cond_a
    if-eqz v7, :cond_0

    .line 3292
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v12

    const v13, 0x2102d

    const/4 v14, 0x0

    check-cast v7, Ljava/net/Inet4Address;

    .end local v7    # "resolvedIP":Ljava/net/InetAddress;
    invoke-static {v7}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v15

    const-string v16, "http://clients3.google.com/generate_204"

    invoke-static/range {v12 .. v16}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3299
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 3243
    .restart local v7    # "resolvedIP":Ljava/net/InetAddress;
    :cond_b
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_c

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    :cond_c
    const/4 v2, 0x1

    .line 3245
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    goto :goto_1

    .line 3248
    :cond_d
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 3249
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v13, 0x1

    const/16 v14, 0xbb8

    const/4 v15, 0x0

    const-string/jumbo v16, "www.google.com"

    invoke-virtual/range {v12 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 3250
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3251
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 3252
    const/4 v9, 0x2

    goto/16 :goto_1

    .line 3254
    :cond_e
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[second DNS query requested!]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3258
    :cond_f
    const/4 v12, 0x3

    if-ne v2, v12, :cond_10

    .line 3259
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 3260
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 3261
    const/4 v9, 0x2

    goto/16 :goto_1

    .line 3262
    :cond_10
    if-nez v2, :cond_8

    .line 3263
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 3264
    const/4 v9, 0x3

    .line 3265
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    if-eqz v12, :cond_11

    .line 3266
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mFirstPortalDnsRequest:Z

    .line 3267
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21013

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3269
    :try_start_1
    new-instance v11, Ljava/net/URL;

    const-string v12, "http://clients3.google.com/generate_204"

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3270
    .local v11, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v13, 0x2

    const/16 v14, 0xbb8

    const/4 v15, 0x0

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 3271
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3272
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12}, Ljava/io/IOException;-><init>()V

    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3276
    .end local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 3277
    .local v3, "ie":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "couldn\'t resolve a URL : http://clients3.google.com/generate_204"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3278
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3279
    const/4 v9, 0x2

    .line 3282
    .end local v3    # "ie":Ljava/io/IOException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    goto/16 :goto_1

    .line 3274
    .restart local v11    # "url":Ljava/net/URL;
    :cond_12
    :try_start_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[DNS query requested!]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 3304
    .end local v11    # "url":Ljava/net/URL;
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "The resolved IP is not IPv4"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3305
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 3306
    const/4 v9, 0x3

    .line 3312
    .end local v2    # "dnsResult":I
    .end local v7    # "resolvedIP":Ljava/net/InetAddress;
    :cond_14
    :sswitch_3
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2102f

    if-ne v12, v13, :cond_17

    .line 3313
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[TIMEOUT_CAPTIVE_PORTAL]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_15
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->shutdownInput()V

    .line 3316
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3319
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 3320
    const/4 v9, 0x3

    .line 3325
    :cond_17
    :sswitch_4
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2102e

    if-ne v12, v13, :cond_1a

    .line 3326
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[STATUS_CODE_CAPTIVE_PORTAL]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    :cond_18
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 3329
    .local v8, "responseCode":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1f

    const/4 v10, 0x1

    .line 3330
    .local v10, "sameLocation":Z
    :goto_3
    const/4 v9, 0x1

    .line 3331
    const/16 v12, 0xcc

    if-eq v8, v12, :cond_19

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-eqz v12, :cond_1a

    if-eqz v10, :cond_1a

    .line 3332
    :cond_19
    const/4 v9, 0x0

    .line 3335
    .end local v8    # "responseCode":I
    .end local v10    # "sameLocation":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    if-ne v12, v0, :cond_2e

    .line 3336
    packed-switch v9, :pswitch_data_0

    .line 3415
    :cond_1b
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xd

    if-eq v12, v13, :cond_0

    .line 3417
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_1c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mUnidentifiedCount : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3418
    :cond_1c
    const/16 v6, 0x2710

    .line 3419
    .local v6, "period":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xe

    if-ne v12, v13, :cond_2c

    .line 3420
    const/16 v6, 0x1388

    .line 3428
    :cond_1d
    :goto_5
    const v12, 0x2102a

    int-to-long v13, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3432
    .end local v6    # "period":I
    :cond_1e
    :goto_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    goto/16 :goto_0

    .line 3329
    .restart local v8    # "responseCode":I
    :cond_1f
    const/4 v10, 0x0

    goto :goto_3

    .line 3338
    .end local v8    # "responseCode":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3339
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_22

    .line 3340
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 3341
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3343
    :cond_20
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3344
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_21

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "CAPTIVE_PORTAL_EVENT_AUTHENTICATED"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21019

    const v14, 0x2101c

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3347
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 3348
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 3349
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->authenticationComplete()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_4

    .line 3351
    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xe

    if-ne v12, v13, :cond_1b

    .line 3352
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_23

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Now, the current AP has been automatically authenticated!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    :cond_23
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3354
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    .line 3356
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 3357
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->authenticationComplete()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_4

    .line 3363
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 3364
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_1b

    .line 3365
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 3366
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15802(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3367
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_24

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "CAPTIVE_PORTAL_EVENT_DETECTED"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21019

    const v14, 0x2101a

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_4

    .line 3370
    :cond_25
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_1b

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mAuthCheckStartTime:J

    sub-long v12, v4, v12

    const-wide/32 v14, 0x1d4c0

    cmp-long v12, v12, v14

    if-lez v12, :cond_1b

    .line 3372
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_26

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "CAPTIVE_PORTAL_EVENT_DETECTED_FOR_A_WHILE"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21019

    const v14, 0x2101b

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto/16 :goto_4

    .line 3380
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # operator++ for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6108(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 3381
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 3382
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 3383
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_27

    .line 3384
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x4

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 3385
    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    .line 3392
    :cond_28
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v12

    if-nez v12, :cond_1b

    .line 3393
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/16 v13, 0xd

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_4

    .line 3387
    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v13, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iput v14, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 3388
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3389
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_7

    .line 3398
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # operator++ for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6108(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 3399
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 3400
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkAvoidanceEnabled:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 3401
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v12

    if-nez v12, :cond_2a

    .line 3402
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v13, 0x4

    iput v13, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    .line 3403
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_4

    .line 3405
    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v12, v12, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v13, v13, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v13, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iput v14, v12, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 3406
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 3407
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    const/4 v14, 0x2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_4

    .line 3421
    .restart local v6    # "period":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6100(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_1d

    .line 3423
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_2d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v13, "start to check the captive portal state after 600000ms"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$17700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3424
    :cond_2d
    const v6, 0x927c0

    .line 3425
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mUnidentifiedCount:I
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_5

    .line 3429
    .end local v6    # "period":I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v12, :cond_1e

    .line 3430
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    const v13, 0x2102c

    const/4 v14, -0x1

    invoke-static {v12, v13, v9, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6

    .line 3436
    :sswitch_5
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_2f

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[EVENT_SCAN_STARTED]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    :cond_2f
    :sswitch_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x21046

    if-ne v12, v13, :cond_31

    .line 3440
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_30

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[EVENT_SCAN_TIMEOUT]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_31

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v13, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v12, v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 3445
    :cond_31
    :sswitch_7
    const v12, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 3446
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2103e

    if-ne v12, v13, :cond_32

    .line 3447
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_32

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "[EVENT_SCAN_COMPLETE]"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :cond_32
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v12

    const v13, 0x21014

    invoke-virtual {v12, v13}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3451
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_33

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->shutdownInput()V

    .line 3452
    :cond_33
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$13100(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3455
    :goto_8
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 3456
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 3457
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCaptivePortalDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v12}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14300(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 3458
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v12, :cond_38

    .line 3459
    const v12, 0x2102f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 3460
    const v12, 0x2102a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 3461
    const v12, 0x21030

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 3462
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2103e

    if-eq v12, v13, :cond_34

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x21046

    if-ne v12, v13, :cond_36

    .line 3463
    :cond_34
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_35

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Scan completed, but there is ongoing captive portal check"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    :cond_35
    const v12, 0x21030

    const-wide/16 v13, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3466
    :cond_36
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    .line 3467
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_37

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Scan started, the current captive portal check need to be canceled"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    :cond_37
    const v12, 0x21030

    const-wide/16 v13, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3470
    :cond_38
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x2103e

    if-eq v12, v13, :cond_39

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const v13, 0x21046

    if-ne v12, v13, :cond_3b

    .line 3471
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->mStoppedByScan:Z

    if-eqz v12, :cond_0

    .line 3472
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_3a

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Scan completed, check again the captive portal state at once!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    :cond_3a
    const v12, 0x21030

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3476
    :cond_3b
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "WifiWatchdogStateMachine.CaptivePortalHandler"

    const-string v13, "Scan started, but there\'s no ongoing captive portal check."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3453
    :catch_2
    move-exception v12

    goto/16 :goto_8

    .line 3317
    :catch_3
    move-exception v12

    goto/16 :goto_2

    .line 3202
    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x2102a -> :sswitch_1
        0x2102e -> :sswitch_4
        0x2102f -> :sswitch_3
        0x21030 -> :sswitch_0
        0x2103d -> :sswitch_5
        0x2103e -> :sswitch_7
        0x21046 -> :sswitch_6
        0x50005 -> :sswitch_2
    .end sparse-switch

    .line 3336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
