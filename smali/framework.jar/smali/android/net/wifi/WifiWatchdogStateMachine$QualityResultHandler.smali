.class Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityResultHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCurrentTime:J

.field private mCurrentURL:Ljava/lang/String;

.field private mCurrentURLIdx:I

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mId:I

.field private mOngoingId:I

.field private mPreviousPrivateIP:Ljava/net/InetAddress;

.field private mQualityResults:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

.field private mStartRSSI:I

.field private mStartRate:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;I)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2236
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 2237
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2123
    const-string v0, "WifiWatchdogStateMachine.QualityResultHandler_"

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    .line 2125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 2126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentTime:J

    .line 2127
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRSSI:I

    .line 2128
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRate:I

    .line 2130
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2131
    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    .line 2132
    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    .line 2134
    iput-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 2239
    iput p3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mId:I

    .line 2240
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mId:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    .line 2241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    .line 2243
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.DnsResolver"

    invoke-direct {v0, p1, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    .line 2245
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create QualityResultHandler_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_1
    return-void
.end method

.method static synthetic access$13900(Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    .line 2122
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14000(Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    .line 2122
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    .prologue
    .line 2122
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V

    return-void
.end method

.method private notifyDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2249
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2250
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2252
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 2253
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2257
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    :goto_0
    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2260
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 2261
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14200(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    .line 2262
    return-void

    .line 2257
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v0

    .line 2254
    :catch_0
    move-exception v0

    .line 2257
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto :goto_0

    .line 2255
    :catch_1
    move-exception v0

    .line 2257
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2304
    move-object/from16 v0, p0

    iget v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mId:I

    if-eqz v1, :cond_1

    .line 2644
    :cond_0
    :goto_0
    return-void

    .line 2305
    :cond_1
    const/4 v4, -0x1

    .line 2306
    .local v4, "qualityResult":I
    const/4 v11, 0x0

    .line 2307
    .local v11, "id":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2308
    .local v13, "ongoingId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    .line 2309
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2642
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2312
    :sswitch_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    .line 2313
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21020

    if-ne v1, v2, :cond_9

    .line 2314
    if-lez v13, :cond_2

    .line 2315
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "redundant QC request detected!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2319
    :cond_2
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .end local v13    # "ongoingId":I
    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2320
    .restart local v13    # "ongoingId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v13, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 2322
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOngoingId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setUrlList()V

    .line 2324
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    .line 2325
    :cond_5
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSets:I
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10400(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    .line 2326
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    .line 2332
    :cond_7
    :goto_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentURL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 2334
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "There is no resolved URL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2336
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2337
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2338
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v2, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v1, v13, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14800(Landroid/net/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    .line 2328
    :cond_9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    .line 2329
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "[QC_REDIRECT]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2342
    :cond_a
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2343
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->clear()V

    .line 2344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentTime:J

    .line 2346
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 2347
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRSSI:I

    .line 2348
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRate:I

    .line 2350
    const/4 v1, 0x1

    if-le v13, v1, :cond_c

    .line 2351
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x21013

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2354
    :cond_c
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2355
    .local v17, "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v2, 0x2

    const/16 v3, 0xbb8

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2356
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2357
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2359
    .end local v17    # "url":Ljava/net/URL;
    :catch_0
    move-exception v12

    .line 2360
    .local v12, "ie":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t resolve a URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2361
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2362
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2363
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2364
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x21014

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2365
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v1, v13, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14800(Landroid/net/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    .line 2371
    .end local v12    # "ie":Ljava/io/IOException;
    :sswitch_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v10

    .line 2373
    .local v10, "dnsResult":I
    const/4 v1, 0x2

    if-ne v10, v1, :cond_e

    .line 2374
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2378
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x21014

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2379
    :cond_f
    const/4 v15, 0x0

    .line 2380
    .local v15, "resolvedIP":Ljava/net/InetAddress;
    const/16 v16, -0x1

    .line 2381
    .local v16, "result":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcId:I

    .line 2383
    const/4 v1, 0x4

    if-ne v10, v1, :cond_17

    .line 2384
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    if-eqz v1, :cond_15

    .line 2385
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2386
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "DNS_CHECK_RESULT_PRIVATE_IP!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2388
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2389
    const/16 v16, 0x0

    .line 2419
    :cond_11
    :goto_2
    const/4 v1, 0x1

    if-ne v10, v1, :cond_1d

    .line 2420
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_19

    .line 2421
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "still staying in captive portal state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_12
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2423
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v2, -0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v1, v13, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14800(Landroid/net/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    .line 2391
    :cond_13
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "DNS_CHECK_RESULT_different_PRIVATE_IP!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_14
    const/4 v10, 0x1

    .line 2393
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    goto :goto_2

    .line 2396
    :cond_15
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 2397
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v2, 0x1

    const/16 v3, 0xbb8

    const/4 v5, 0x0

    const-string v6, "www.google.com"

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2398
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "DNS List is empty, ignore dns checking"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v2, 0x3

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2400
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2401
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 2403
    :cond_16
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "[second DNS query requested!]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2407
    :cond_17
    const/4 v1, 0x3

    if-ne v10, v1, :cond_18

    .line 2408
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 2409
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v2, 0xa

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2410
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2411
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 2412
    :cond_18
    if-nez v10, :cond_11

    .line 2413
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 2414
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v2, 0x5

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2415
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2416
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 2426
    :cond_19
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 2427
    if-nez v15, :cond_1a

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v15    # "resolvedIP":Ljava/net/InetAddress;
    check-cast v15, Ljava/net/InetAddress;

    .line 2428
    .restart local v15    # "resolvedIP":Ljava/net/InetAddress;
    :cond_1a
    instance-of v1, v15, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1c

    .line 2429
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS Response SELECTED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2430
    :cond_1b
    if-eqz v15, :cond_0

    .line 2432
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v1

    const v2, 0x21026

    check-cast v15, Ljava/net/Inet4Address;

    .end local v15    # "resolvedIP":Ljava/net/InetAddress;
    invoke-static {v15}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURL:Ljava/lang/String;

    invoke-static {v1, v2, v13, v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2440
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 2444
    .restart local v15    # "resolvedIP":Ljava/net/InetAddress;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "The resolved IP is not IPv4"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2445
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2446
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 2447
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mPreviousPrivateIP:Ljava/net/InetAddress;

    .line 2448
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v2, 0x4

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    .line 2449
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, v1, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    .line 2450
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v2, 0x1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v1, v13, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14800(Landroid/net/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    .line 2452
    :cond_1d
    if-ltz v16, :cond_0

    .line 2453
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2454
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move/from16 v0, v16

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v1, v13, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14800(Landroid/net/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    .line 2460
    .end local v10    # "dnsResult":I
    .end local v15    # "resolvedIP":Ljava/net/InetAddress;
    .end local v16    # "result":I
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V

    goto/16 :goto_0

    .line 2464
    :sswitch_3
    if-nez v13, :cond_1e

    .line 2465
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "QC result was already reported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2468
    :cond_1e
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 2469
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QC_RESULT_RECEIVED] id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_1f
    if-ne v13, v11, :cond_0

    .line 2471
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_21

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 2474
    :goto_3
    :sswitch_4
    if-gez v4, :cond_23

    .line 2475
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "[QC_GOOD_RX_DETECTED]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_20
    if-nez v13, :cond_22

    .line 2477
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "There is no ongoing QC!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2471
    :cond_21
    const/4 v4, 0x1

    goto :goto_3

    .line 2480
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 2481
    const v1, 0x21024

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2482
    const v1, 0x21025

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2483
    move v11, v13

    .line 2484
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 2488
    :cond_23
    :sswitch_5
    if-gez v4, :cond_26

    .line 2489
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 2490
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QC_RESOLVE_HOSTNAME_TIMEOUT] id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_24
    if-ne v13, v11, :cond_0

    .line 2492
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxPacketsDuringQC()I

    move-result v14

    .line 2493
    .local v14, "packets":I
    mul-int/lit16 v4, v14, 0x5cc

    .line 2494
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v9

    .line 2495
    .local v9, "bytes":I
    if-ge v4, v9, :cond_25

    move v4, v9

    .line 2496
    :cond_25
    div-int/lit8 v4, v4, 0x3

    .line 2497
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_26

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qualityResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    .end local v9    # "bytes":I
    .end local v14    # "packets":I
    :cond_26
    :sswitch_6
    if-nez v13, :cond_27

    .line 2502
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "QC result was already reported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2506
    :cond_27
    if-gez v4, :cond_29

    .line 2507
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 2508
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_28

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[QUALITY_CHECK_TIMEOUT] id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :cond_28
    if-ne v13, v11, :cond_0

    .line 2510
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxPacketsDuringQC()I

    move-result v14

    .line 2511
    .restart local v14    # "packets":I
    const/4 v1, 0x5

    if-lt v14, v1, :cond_2d

    .line 2512
    mul-int/lit16 v4, v14, 0x5cc

    .line 2519
    .end local v14    # "packets":I
    :cond_29
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 2521
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    .line 2522
    :cond_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2526
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    :goto_5
    const/4 v2, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2530
    :cond_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 2531
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2532
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentTime:J

    move-object/from16 v0, p0

    iget v5, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRSSI:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mStartRate:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->setValues(JIIIII)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mQualityResults:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->writeResults()V

    .line 2538
    :cond_2c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2539
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->reportQCResult(II)V
    invoke-static {v1, v11, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14800(Landroid/net/wifi/WifiWatchdogStateMachine;II)V

    goto/16 :goto_0

    .line 2514
    .restart local v14    # "packets":I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualitySocketHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v4

    .line 2515
    if-nez v4, :cond_29

    const/4 v4, 0x1

    goto/16 :goto_4

    .line 2526
    .end local v14    # "packets":I
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v1

    .line 2543
    :sswitch_7
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EVENT_NETWORK_PROPERTIES_CHANGED] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2544
    :cond_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EVENT_NETWORK_PROPERTIES_CHANGED] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_30

    .line 2546
    :cond_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2547
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheck:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$15400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v2

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->access$15500(Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v2

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    .line 2548
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_30

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDnsServerList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :cond_30
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2553
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "EVENT_SCAN_TIMEOUT while QC - reset scanning flag."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v2, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 2555
    const v1, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2559
    :cond_31
    :sswitch_9
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x2103e

    if-ne v1, v2, :cond_33

    .line 2560
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "[EVENT_SCAN_COMPLETE]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :cond_32
    const v1, 0x21046

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2567
    :cond_33
    :sswitch_a
    if-nez v13, :cond_39

    .line 2568
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2569
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x2103e

    if-eq v1, v2, :cond_34

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21046

    if-ne v1, v2, :cond_35

    .line 2570
    :cond_34
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "No QC ongoing at EVENT_SCAN_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2571
    :cond_35
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x2103d

    if-ne v1, v2, :cond_36

    .line 2572
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "No QC ongoing at EVENT_SCAN_STARTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2573
    :cond_36
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21043

    if-ne v1, v2, :cond_37

    .line 2574
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "No QC ongoing at EVENT_NETWORK_PROPERTIES_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2575
    :cond_37
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21044

    if-ne v1, v2, :cond_38

    .line 2576
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "No QC ongoing at EVENT_DHCP_SESSION_STARTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2577
    :cond_38
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21045

    if-ne v1, v2, :cond_0

    .line 2578
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "No QC ongoing at EVENT_DHCP_SESSION_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2583
    :cond_39
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2584
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x2103e

    if-eq v1, v2, :cond_3a

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21046

    if-ne v1, v2, :cond_3f

    .line 2585
    :cond_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ongoing QC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EVENT_SCAN_COMPLETE while QC - stop the QC and reschedule another QC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_3b
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 2597
    const v1, 0x21024

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2598
    const v1, 0x21025

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2599
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x21014

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2600
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21043

    if-eq v1, v2, :cond_3c

    .line 2601
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->restartQCCancelledByScanOrDhcp()V

    .line 2604
    :cond_3c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 2606
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    .line 2607
    :cond_3d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2611
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    :goto_7
    const/4 v2, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 2614
    :cond_3e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    goto/16 :goto_0

    .line 2586
    :cond_3f
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x2103d

    if-ne v1, v2, :cond_40

    .line 2587
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ongoing QC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EVENT_SCAN_STARTED while QC - stop the QC and reschedule another QC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2588
    :cond_40
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21043

    if-ne v1, v2, :cond_41

    .line 2589
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ongoing QC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EVENT_NETWORK_PROPERTIES_CHANGED while QC - stop the QC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2590
    :cond_41
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21044

    if-ne v1, v2, :cond_42

    .line 2591
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ongoing QC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EVENT_DHCP_SESSION_STARTED while QC - stop the QC and reschedule another QC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2592
    :cond_42
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x21045

    if-ne v1, v2, :cond_3b

    .line 2593
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ongoing QC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EVENT_DHCP_SESSION_COMPLETE while QC - stop the QC and reschedule another QC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2611
    :catchall_1
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v1

    .line 2618
    :sswitch_b
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_43

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "[QC_FAILED_BY_HIGH_LOSS]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :cond_43
    if-nez v13, :cond_44

    .line 2620
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;

    const-string v2, "There is no ongoing QC!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2623
    :cond_44
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDnsResolver:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    .line 2624
    const v1, 0x21024

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2625
    const v1, 0x21025

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 2626
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x21014

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2627
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    .line 2629
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2631
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_45

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    .line 2632
    :cond_45
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12500(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2636
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    :goto_8
    const/4 v2, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$12502(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    throw v1

    .line 2523
    :catch_2
    move-exception v1

    .line 2526
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto/16 :goto_5

    .line 2524
    :catch_3
    move-exception v1

    .line 2526
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto/16 :goto_5

    .line 2633
    :catch_4
    move-exception v1

    .line 2636
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto :goto_8

    .line 2634
    :catch_5
    move-exception v1

    .line 2636
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto :goto_8

    .line 2608
    :catch_6
    move-exception v1

    .line 2611
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto/16 :goto_7

    .line 2609
    :catch_7
    move-exception v1

    .line 2611
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto/16 :goto_7

    .line 2309
    nop

    :sswitch_data_0
    .sparse-switch
        0x21017 -> :sswitch_2
        0x21020 -> :sswitch_0
        0x21024 -> :sswitch_6
        0x21025 -> :sswitch_5
        0x21027 -> :sswitch_3
        0x21028 -> :sswitch_4
        0x21029 -> :sswitch_0
        0x21031 -> :sswitch_b
        0x2103d -> :sswitch_a
        0x2103e -> :sswitch_9
        0x21043 -> :sswitch_7
        0x21044 -> :sswitch_a
        0x21045 -> :sswitch_a
        0x21046 -> :sswitch_8
        0x50005 -> :sswitch_1
    .end sparse-switch
.end method

.method readOngoingId()I
    .locals 1

    .prologue
    .line 2299
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mOngoingId:I

    return v0
.end method

.method setToDefaultURL()V
    .locals 1

    .prologue
    .line 2295
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v0, v0, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    .line 2296
    return-void
.end method

.method setUrlList()V
    .locals 5

    .prologue
    .line 2266
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2267
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1802(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2273
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2274
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1902(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 2275
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCountryIso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 2278
    :cond_1
    const-string v2, "kr"

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2279
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->LIST3:[Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14500()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    .line 2290
    :goto_1
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 2291
    .local v1, "rand":Ljava/util/Random;
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mCurrentURLIdx:I

    .line 2292
    return-void

    .line 2269
    .end local v1    # "rand":Ljava/util/Random;
    :catch_0
    move-exception v0

    .line 2270
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v3, "Exception occured at setUrlList(), while retrieving Context.TELEPHONY_SERVICE"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 2280
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "cn"

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2281
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->LIST2:[Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14600()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    goto :goto_1

    .line 2286
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->LIST1:[Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$14700()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiWatchdogStateMachine;->mUrlList:[Ljava/lang/String;

    goto :goto_1
.end method
