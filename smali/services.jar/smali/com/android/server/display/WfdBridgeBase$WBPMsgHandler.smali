.class public Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;
.super Ljava/lang/Thread;
.source "WfdBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WfdBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WBPMsgHandler"
.end annotation


# static fields
.field public static final STR_AllShareCast:Ljava/lang/String; = "AllShareCast"

.field public static final STR_CRLF:Ljava/lang/String; = "\r\n"

.field public static final STR_MirrorMouse:Ljava/lang/String; = "MirrorMouse"

.field public static final STR_RVF:Ljava/lang/String; = "RVF"

.field public static final STR_ScreenMirroring:Ljava/lang/String; = "ScreenMirroring"

.field public static final STR_Sink:Ljava/lang/String; = "Sink"

.field public static final STR_Source:Ljava/lang/String; = "Source"

.field private static final TAG:Ljava/lang/String; = "WBPMsgHandler"


# instance fields
.field private mMsgList:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/server/display/WfdBridgeBase$WBPMsg;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/WfdBridgeBase;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WfdBridgeBase;)V
    .locals 1

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    .line 289
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    .line 290
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    .line 291
    return-void
.end method

.method private parseBridgeCmdInfo(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 7
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v5, 0x0

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 489
    .local v2, "parcel":Landroid/os/Parcel;
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 490
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 491
    const-class v3, Lcom/android/server/display/CmdInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/CmdInfo;

    .line 493
    .local v1, "ci":Lcom/android/server/display/CmdInfo;
    const-string v3, "WBPMsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CmdType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-object v3, Lcom/android/server/display/WfdBridgeBase$1;->$SwitchMap$com$android$server$display$CmdInfo$CmdType:[I

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdType()Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 511
    const-string v3, "WBPMsgHandler"

    const-string v4, "Wrong Cmd Type is accepted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 517
    return-void

    .line 497
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v5

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v6}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onConnRequest(IILjava/net/InetAddress;)V

    goto :goto_0

    .line 501
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v5

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v6}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onConnRequest(IILjava/net/InetAddress;)V

    goto :goto_0

    .line 505
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/server/display/CmdInfo;->getCmdDetail()I

    move-result v0

    .line 506
    .local v0, "busyFlag":I
    const-string v3, "WBPMsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected mBusyFlag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput v0, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mBusyFlag:I

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 2
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 360
    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 362
    :cond_0
    const-string v0, "WBPMsgHandler"

    const-string v1, "received msg is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    const-string v1, "WBP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-direct {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseResponse(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z

    goto :goto_0

    .line 369
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseRequest(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z

    goto :goto_0
.end method

.method private parseRequest(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z
    .locals 8
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v5, 0x1

    .line 376
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    const-string v7, " \n\r,"

    invoke-direct {v2, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "token":Ljava/lang/String;
    const-string v6, "GET_PARAMETER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_GET_PARAM_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    .line 425
    :goto_0
    return v5

    .line 382
    :cond_0
    const-string v6, "KEEPALIVE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_KEEPALIVE_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_0

    .line 386
    :cond_1
    const-string v6, "TRIGGER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 388
    iget-object v6, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v6}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onGetStatus()I

    move-result v1

    .line 390
    .local v1, "deviceStatus":I
    const/16 v6, 0xc8

    if-ne v1, v6, :cond_3

    .line 391
    const/4 v0, -0x1

    .line 392
    .local v0, "dev":I
    const/4 v4, -0x1

    .line 394
    .local v4, "type":I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 398
    const-string v6, "RVF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 399
    const/4 v4, 0x0

    .line 407
    :cond_2
    :goto_1
    const-string v6, "Sink"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 408
    const/4 v0, 0x1

    .line 413
    :goto_2
    if-gez v4, :cond_7

    .line 414
    const/16 v1, 0x12f

    .line 421
    .end local v0    # "dev":I
    .end local v4    # "type":I
    :cond_3
    :goto_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_TRIGGER_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;I)V

    goto :goto_0

    .line 400
    .restart local v0    # "dev":I
    .restart local v4    # "type":I
    :cond_4
    const-string v6, "MirrorMouse"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 401
    const/4 v4, 0x1

    goto :goto_1

    .line 402
    :cond_5
    const-string v6, "ScreenMirroring"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 403
    const/4 v4, 0x2

    goto :goto_1

    .line 410
    :cond_6
    const/4 v0, 0x2

    goto :goto_2

    .line 416
    :cond_7
    iget-object v6, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    iget-object v7, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v7}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v6, v0, v4, v7}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onConnRequest(IILjava/net/InetAddress;)V

    goto :goto_3

    .line 425
    .end local v0    # "dev":I
    .end local v1    # "deviceStatus":I
    .end local v4    # "type":I
    :cond_8
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private parseResponse(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)Z
    .locals 9
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 431
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    const-string v7, " \n\r,"

    invoke-direct {v1, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "token":Ljava/lang/String;
    const/4 v0, 0x0

    .line 437
    .local v0, "errorCode":I
    const-string v6, "WBP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 482
    :goto_0
    return v4

    .line 440
    :cond_0
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget v6, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mWbpVersion:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 442
    const-string v6, "\\/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "strArr":[Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mWbpVersion:F

    .line 445
    .end local v2    # "strArr":[Ljava/lang/String;
    :cond_1
    const-string v6, "WBPMsgHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WBP version= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 447
    const-string v6, "WBPMsgHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WBP error code= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 449
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 450
    const-string v6, "WBPMsgHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WBP error msg= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_5

    .line 453
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 454
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 455
    const-string/jumbo v6, "supported:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 456
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-nez v6, :cond_3

    .line 457
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v7, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    iget-object v8, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {v7, v8}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;-><init>(Lcom/android/server/display/WfdBridgeBase;)V

    iput-object v7, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    .line 460
    :goto_1
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v6, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    invoke-virtual {v6, v1}, Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;->parseSupportedType(Ljava/util/StringTokenizer;)V

    .line 461
    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput-boolean v4, v6, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    .line 462
    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget v4, v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mWbpVersion:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v4, v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mKeepAliveMsgSent:Z

    if-ne v4, v5, :cond_2

    .line 463
    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput-boolean v5, v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mCheckedKeepAlive:Z

    .line 477
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v4, v4, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    iget-object v6, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v6}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onOK(Ljava/net/InetAddress;)V

    :goto_2
    move v4, v5

    .line 482
    goto/16 :goto_0

    .line 459
    :cond_3
    const-string v6, "WBPMsgHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseResponse wbp.mPeer.mDevice = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v8, v8, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 469
    :cond_4
    const-string v4, "alive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 472
    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iput-boolean v5, v4, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mCheckedKeepAlive:Z

    move v4, v5

    .line 473
    goto/16 :goto_0

    .line 479
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v4, v4, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-interface {v4, v0}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onError(I)V

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 355
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    .line 356
    return-void
.end method

.method public getSupportedDevList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    const-string v0, "AllShareCast/Source/Sink, RVF/Source/Sink"

    return-object v0
.end method

.method public putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I
    .locals 3
    .param p1, "msg"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WBPMsgHandler"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 295
    const/4 v2, 0x0

    .line 298
    .local v2, "msg":Lcom/android/server/display/WfdBridgeBase$WBPMsg;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-boolean v3, v3, Lcom/android/server/display/WfdBridgeBase;->mSession:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    if-eqz v3, :cond_1

    .line 300
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 301
    iget v3, v2, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 349
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->mMsgList:Ljava/util/concurrent/BlockingQueue;

    .line 350
    const-string v3, "WBPMsgHandler"

    const-string v4, "End of WBPMsgHandler"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 305
    :cond_2
    :try_start_1
    iget v3, v2, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    sparse-switch v3, :sswitch_data_0

    .line 337
    const-string v3, "WBPMsgHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WBPMsg Parse Error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsgType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "WBPMsgHandler"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 307
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :sswitch_0
    :try_start_2
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_NOT_PARSED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_0

    .line 312
    :sswitch_1
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_NOT_PARSED_LEGACY"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->parseBridgeCmdInfo(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_0

    .line 317
    :sswitch_2
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_TRIGGER_M1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_GET_PARAM(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_0

    .line 322
    :sswitch_3
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_WBP_TRIGGER"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_TRIGGER(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto :goto_0

    .line 327
    :sswitch_4
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_TRIGGER_BUSYFLAG"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_busyFlag(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V

    goto/16 :goto_0

    .line 332
    :sswitch_5
    const-string v3, "WBPMsgHandler"

    const-string v4, "GET WBPMSGTYPE_KEEP_ALIVE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->send_WBP_KEEPALIVE(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 305
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3ed -> :sswitch_4
        0x7d0 -> :sswitch_5
    .end sparse-switch
.end method

.method public send_WBP_GET_PARAM(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 3
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 553
    const-string v0, "GET_PARAMETER WBP/1.1\r\nsupported\r\n\r\n"

    .line 557
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 558
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mWbpVersion:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 559
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mKeepAliveMsgSent:Z

    .line 560
    :cond_0
    return-void
.end method

.method public send_WBP_GET_PARAM_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 3
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WBP/1.1 200 OK\r\nsupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->getSupportedDevList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 580
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    if-eqz v1, :cond_1

    .line 581
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I

    .line 583
    :cond_1
    return-void
.end method

.method public send_WBP_KEEPALIVE(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 3
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 563
    const-string v0, "KEEPALIVE WBP/1.1\r\n\r\n"

    .line 565
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 566
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mKeepAliveMsgSent:Z

    .line 567
    return-void
.end method

.method public send_WBP_KEEPALIVE_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 3
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 586
    const-string v0, "WBP/1.1 200 OK\r\nalive \r\n\r\n"

    .line 590
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 592
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    if-eqz v1, :cond_1

    .line 593
    :cond_0
    const/16 v1, 0x7d0

    iget-object v2, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I

    .line 595
    :cond_1
    return-void
.end method

.method public send_WBP_TRIGGER(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 6
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 599
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v3, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    if-eqz v3, :cond_1

    .line 600
    :cond_0
    const-string v3, "WBPMsgHandler"

    const-string v4, "send_WBP_TRIGGER : Client is a legacy device."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget v3, v3, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mBusyFlag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 602
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/16 v4, 0x12d

    invoke-interface {v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onError(I)V

    .line 646
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TRIGGER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WBP/1.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v3, v1}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 650
    return-void

    .line 605
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    :try_start_0
    const-string v3, "WBPMsgHandler"

    const-string v4, "sendCmd for trigger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 607
    .local v2, "parcel":Landroid/os/Parcel;
    new-instance v3, Lcom/android/server/display/CmdInfo;

    iget v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mDev:I

    iget v5, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    invoke-direct {v3, v4, v5}, Lcom/android/server/display/CmdInfo;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 608
    iget-object v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 609
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v2    # "parcel":Landroid/os/Parcel;
    :goto_1
    const-string v3, "WBPMsgHandler"

    const-string v4, "Force OK, launch Peding dev"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v3, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    iget-object v3, v3, Lcom/android/server/display/WfdBridgeBase;->mListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    iget-object v4, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v4}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onOK(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WBPMsgHandler"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public send_WBP_TRIGGER_RES(Lcom/android/server/display/WfdBridgeBase$WBPMsg;I)V
    .locals 3
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;
    .param p2, "returnType"    # I

    .prologue
    .line 653
    const-string v0, "WBP/1.1"

    .line 655
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 304 UNKNOWN\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    :goto_0
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 678
    return-void

    .line 657
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 200 OK\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    goto :goto_0

    .line 661
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 301 SCREEN_OFF\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    goto :goto_0

    .line 665
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 302 ENGINE_RUNNING\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    goto :goto_0

    .line 669
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 303 DO_NOT_SUPPORT\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    goto :goto_0

    .line 655
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_2
        0x12f -> :sswitch_3
    .end sparse-switch
.end method

.method public send_busyFlag(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)V
    .locals 4
    .param p1, "wbp"    # Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    .prologue
    .line 520
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-object v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mDevice:Lcom/android/server/display/WfdBridgeBase$BrigePeerDevice;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    iget-boolean v1, v1, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->mIsLegacyDevice:Z

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    const-string v1, "WBPMsgHandler"

    const-string v2, "sendCmd for trigger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 523
    .local v0, "parcel":Landroid/os/Parcel;
    new-instance v1, Lcom/android/server/display/CmdInfo;

    sget-object v2, Lcom/android/server/display/CmdInfo$CmdType;->SET_BUSY_FLAG:Lcom/android/server/display/CmdInfo$CmdType;

    iget v3, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mType:I

    invoke-direct {v1, v2, v3}, Lcom/android/server/display/CmdInfo;-><init>(Lcom/android/server/display/CmdInfo$CmdType;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 524
    iget-object v1, p1, Lcom/android/server/display/WfdBridgeBase$WBPMsg;->mPeer:Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/WfdBridgeBase$BridgePeer;->send(Ljava/lang/String;)I

    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_1
    return-void
.end method

.method public triggerMsg(ILcom/android/server/display/WfdBridgeBase$BridgePeer;)I
    .locals 2
    .param p1, "msgType"    # I
    .param p2, "to"    # Lcom/android/server/display/WfdBridgeBase$BridgePeer;

    .prologue
    .line 549
    new-instance v0, Lcom/android/server/display/WfdBridgeBase$WBPMsg;

    iget-object v1, p0, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->this$0:Lcom/android/server/display/WfdBridgeBase;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/display/WfdBridgeBase$WBPMsg;-><init>(Lcom/android/server/display/WfdBridgeBase;ILcom/android/server/display/WfdBridgeBase$BridgePeer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/WfdBridgeBase$WBPMsgHandler;->putMsg(Lcom/android/server/display/WfdBridgeBase$WBPMsg;)I

    move-result v0

    return v0
.end method
