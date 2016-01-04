.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;
    }
.end annotation


# static fields
.field private static final ALLRECEIVE_MODE:B = 0x3t

.field private static final COMMERCIAL_MODE:B = 0x0t

.field private static final COUNT_COLUMN:I = 0x3

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final ETWS_NOTIFICATION:I = 0x6f

.field private static final KDDITEST_MODE:B = 0x2t

.field private static final MANUFACTURETEST_MODE:B = 0x1t

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CdmaInboundSmsHandler"


# instance fields
.field private final DEBUG:Z

.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private mNotification:Landroid/app/Notification;

.field private final mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 775
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pdu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sequence"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    const/4 v6, 0x1

    .line 118
    const-string v1, "CdmaInboundSmsHandler"

    invoke-static {p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;)Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 99
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 110
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->DEBUG:Z

    .line 120
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 121
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    .line 126
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 6
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 641
    add-int/lit8 p1, p1, 0x4

    .line 642
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 643
    .local v1, "omaPdu":[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 646
    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 649
    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 661
    :cond_0
    :goto_0
    return v4

    .line 653
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 656
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 660
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "mimeType":Ljava/lang/String;
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 549
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v1

    .line 550
    .local v1, "preVoicemailCount":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessagePriority()I

    move-result v4

    .line 551
    .local v4, "voicemailPriority":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v3

    .line 552
    .local v3, "voicemailCount":I
    const-string v5, "CdmaInboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Voicemail count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v5, "CdmaInboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM prev : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v5, "CdmaInboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM priority : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 557
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 558
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 559
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "vm_count_key_cdma"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 560
    const-string v5, "vm_priority_key_cdma"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 561
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 562
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageWaiting(II)V

    .line 564
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->updateVoicemailCount(I)V

    .line 567
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static isInEmergencyCallMode()Z
    .locals 3

    .prologue
    .line 158
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "inEcm":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 146
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 148
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 149
    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;J)I
    .locals 16
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 581
    const/4 v12, 0x0

    .line 583
    .local v12, "index":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    aget-byte v3, p1, v12

    and-int/lit16 v14, v3, 0xff

    .line 584
    .local v14, "msgType":I
    if-eqz v14, :cond_0

    .line 585
    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 586
    const/4 v3, 0x1

    move v12, v13

    .line 626
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :goto_0
    return v3

    .line 588
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_0
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    aget-byte v3, p1, v13

    and-int/lit16 v10, v3, 0xff

    .line 589
    .local v10, "totalSegments":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    aget-byte v3, p1, v12

    and-int/lit16 v9, v3, 0xff

    .line 591
    .local v9, "segment":I
    if-lt v9, v10, :cond_1

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 593
    const/4 v3, 0x1

    move v12, v13

    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto :goto_0

    .line 597
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_1
    const/4 v15, 0x0

    .line 598
    .local v15, "sourcePort":I
    const/4 v5, 0x0

    .line 599
    .local v5, "destinationPort":I
    if-nez v9, :cond_2

    .line 601
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    aget-byte v3, p1, v13

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v15, v3, 0x8

    .line 602
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v15, v3

    .line 603
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    aget-byte v3, p1, v13

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v5, v3, 0x8

    .line 604
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v5, v3

    .line 607
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v3, :cond_2

    .line 608
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    add-int/lit8 v12, v13, 0x4

    .line 615
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 620
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v12

    new-array v2, v3, [B

    .line 621
    .local v2, "userData":[B
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    sub-int/2addr v4, v12

    move-object/from16 v0, p1

    invoke-static {v0, v12, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    new-instance v1, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v6, 0x1

    const/4 v11, 0x1

    move-wide/from16 v3, p4

    move-object/from16 v7, p3

    move/from16 v8, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .line 626
    .local v1, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v3

    goto/16 :goto_0

    .end local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v2    # "userData":[B
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_2
    move v12, v13

    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto :goto_1
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 528
    packed-switch p0, :pswitch_data_0

    .line 539
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 532
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 534
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 536
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1133
    const-string v5, "CdmaInboundSmsHandler"

    const-string v6, "setNotification: create notification "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    .line 1136
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1137
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    const/16 v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1138
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    const v6, 0x108008a

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1139
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.LONGLIFE_START_ALERT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1142
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v6, 0x1040af1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1143
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v6, 0x1040af2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1145
    .local v0, "details":Ljava/lang/CharSequence;
    const/16 v2, 0x6f

    .line 1147
    .local v2, "notificationId":I
    const-string v5, "CdmaInboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1150
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1153
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1157
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1158
    return-void
.end method


# virtual methods
.method protected ETWSJudgeDeliveryFromMessageID(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 2
    .param p1, "smsb"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 1108
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v0

    .line 1114
    .local v0, "serviceCategory":I
    const/4 v1, 0x0

    return v1
.end method

.method protected KddiNotifiyCDMASmsToWIFI([[B)V
    .locals 2
    .param p1, "pdus"    # [[B

    .prologue
    .line 1119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1121
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1122
    return-void
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result v0

    .line 501
    .local v0, "causeCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 503
    if-nez v0, :cond_1

    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 506
    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method public checkImeiTrackerMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method protected completeLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;Landroid/database/Cursor;I)Z
    .locals 26
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursorCount"    # I

    .prologue
    .line 788
    move-object/from16 v19, p1

    check-cast v19, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 789
    .local v19, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    add-int/lit8 v23, p3, 0x1

    move/from16 v0, v23

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    .line 790
    .local v16, "pdus":[[B
    const/16 v17, 0x0

    .line 791
    .local v17, "sessionCount":I
    const/4 v6, 0x1

    .line 792
    .local v6, "complete":Z
    const/4 v14, 0x0

    .line 793
    .local v14, "payload":[B
    const/4 v15, 0x0

    .line 794
    .local v15, "payloadStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 795
    .local v4, "address":Ljava/lang/String;
    const/16 v22, 0x0

    .line 796
    .local v22, "tempData":[B
    const/16 v20, 0x0

    .line 798
    .local v20, "strTempBody":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeqEos()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 799
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeq()I

    move-result v23

    add-int/lit8 v17, v23, 0x1

    .line 800
    add-int/lit8 v23, p3, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 801
    const-string v23, "CdmaInboundSmsHandler"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGU_CBS][1]sessionCount invalid "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " cursorCount = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/16 v23, 0x0

    .line 883
    :goto_0
    return v23

    .line 807
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, p3

    if-ge v11, v0, :cond_3

    .line 808
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 810
    const/16 v23, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 811
    .local v7, "count":I
    const/16 v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 813
    .local v18, "sessionSeq":I
    if-eqz v7, :cond_1

    .line 814
    move/from16 v17, v7

    .line 815
    add-int/lit8 v23, p3, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 816
    const-string v23, "CdmaInboundSmsHandler"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGU_CBS][2]sessionCount invalid  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " cursorCount = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/16 v23, 0x0

    goto :goto_0

    .line 821
    :cond_1
    aget-object v23, v16, v18

    if-eqz v23, :cond_2

    .line 822
    const-string v23, "CdmaInboundSmsHandler"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGU_CBS]duplicated sessionSeq = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " count = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 825
    :cond_2
    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v23

    aput-object v23, v16, v18

    .line 807
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 829
    .end local v7    # "count":I
    .end local v18    # "sessionSeq":I
    :cond_3
    if-nez v17, :cond_4

    .line 830
    const-string v23, "CdmaInboundSmsHandler"

    const-string v24, "[LGU_CBS]sessionCount is zero!!!???"

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 834
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeq()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v24

    aput-object v24, v16, v23

    .line 836
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 837
    .local v13, "output":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 838
    .local v5, "body":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    move-object/from16 v21, v20

    .end local v20    # "strTempBody":Ljava/lang/String;
    .local v21, "strTempBody":Ljava/lang/String;
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 839
    :try_start_1
    aget-object v23, v16, v11

    if-nez v23, :cond_5

    .line 840
    const-string v23, "CdmaInboundSmsHandler"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGU_CBS]pdu is empty i = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " sessionCount = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_5
    aget-object v23, v16, v11

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v12

    .line 843
    .local v12, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v8

    .line 845
    .local v8, "data":[B
    const-string v23, "CdmaInboundSmsHandler"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGU_CBS] Last byte :  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x6

    aget-byte v25, v8, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x5

    aget-byte v25, v8, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    aget-byte v25, v8, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x3

    aget-byte v25, v8, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x2

    aget-byte v25, v8, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    array-length v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-byte v25, v8, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    array-length v0, v8

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-byte v23, v8, v23

    if-nez v23, :cond_7

    .line 853
    const-string v23, "CdmaInboundSmsHandler"

    const-string v24, "[LGU_CBS] Last Index Remove "

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/16 v23, 0x0

    array-length v0, v8

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v8, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 855
    array-length v0, v8

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 856
    const/16 v23, 0x0

    const/16 v24, 0x0

    array-length v0, v8

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    :goto_3
    new-instance v20, Ljava/lang/String;

    const-string v23, "EUC_KR"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 864
    .end local v21    # "strTempBody":Ljava/lang/String;
    .restart local v20    # "strTempBody":Ljava/lang/String;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 866
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x9

    aput-char v25, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v10

    .line 867
    .local v10, "ht":Ljava/lang/String;
    const-string v23, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 868
    const-string v23, "CdmaInboundSmsHandler"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGU_CBS] getMessageBody() :  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsMessageBase;->getReplyAddress()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_6

    .line 872
    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsMessageBase;->getReplyAddress()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 838
    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v21, v20

    .end local v20    # "strTempBody":Ljava/lang/String;
    .restart local v21    # "strTempBody":Ljava/lang/String;
    goto/16 :goto_2

    .line 858
    .end local v10    # "ht":Ljava/lang/String;
    :cond_7
    const/16 v23, 0x0

    :try_start_3
    array-length v0, v8

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v8, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 859
    array-length v0, v8

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 860
    const/16 v23, 0x0

    const/16 v24, 0x0

    array-length v0, v8

    move/from16 v25, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 880
    .end local v8    # "data":[B
    .end local v12    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :catch_0
    move-exception v9

    move-object/from16 v20, v21

    .line 881
    .end local v5    # "body":Ljava/lang/StringBuilder;
    .end local v13    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "strTempBody":Ljava/lang/String;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v20    # "strTempBody":Ljava/lang/String;
    :goto_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 882
    const-string v23, "CdmaInboundSmsHandler"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGU_CBS] exception at completeLGTCBSPdu "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 875
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v20    # "strTempBody":Ljava/lang/String;
    .restart local v5    # "body":Ljava/lang/StringBuilder;
    .restart local v13    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "strTempBody":Ljava/lang/String;
    :cond_8
    :try_start_4
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 876
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 877
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->replacePdu([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 879
    const/16 v23, 0x1

    move-object/from16 v20, v21

    .end local v21    # "strTempBody":Ljava/lang/String;
    .restart local v20    # "strTempBody":Ljava/lang/String;
    goto/16 :goto_0

    .line 880
    .end local v5    # "body":Ljava/lang/StringBuilder;
    .end local v13    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v9

    goto :goto_4
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 23
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->checkEcmPolicy(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const/4 v2, -0x1

    .line 485
    :goto_0
    return v2

    :cond_0
    move-object/from16 v20, p1

    .line 185
    check-cast v20, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 186
    .local v20, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    const/4 v2, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMAMessageType()I

    move-result v7

    if-ne v2, v7, :cond_1

    const/16 v17, 0x1

    .line 189
    .local v17, "isBroadcastType":Z
    :goto_1
    if-eqz v17, :cond_3

    .line 190
    const-string v2, "Broadcast type message"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v12

    .line 205
    .local v12, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v12, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/WakeLockStateMachine;->dispatchSmsMessage(Ljava/lang/Object;)V

    .line 210
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 186
    .end local v12    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v17    # "isBroadcastType":Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 208
    .restart local v12    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .restart local v17    # "isBroadcastType":Z
    :cond_2
    const-string v2, "error trying to parse broadcast SMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    .end local v12    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 220
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v2, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 223
    const/4 v2, 0x1

    goto :goto_0

    .line 226
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v22

    .line 234
    .local v22, "teleService":I
    sparse-switch v22, :sswitch_data_0

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported teleservice 0x"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 269
    const/4 v2, 0x4

    goto :goto_0

    .line 239
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 240
    const/4 v2, 0x1

    goto :goto_0

    .line 247
    :sswitch_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 249
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 254
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->dispatchSmsMessage(Ljava/lang/Object;)V

    .line 255
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 272
    :cond_5
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v2, v7, :cond_6

    .line 277
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 280
    :cond_6
    const/16 v2, 0x1004

    move/from16 v0, v22

    if-ne v2, v0, :cond_7

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 288
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v2

    goto/16 :goto_0

    .line 292
    :cond_7
    const-string v2, "CTC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_WapPushFormat4"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0xfdea

    move/from16 v0, v22

    if-ne v2, v0, :cond_9

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 301
    new-instance v16, Lcom/android/internal/util/BitwiseInputStream;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 302
    .local v16, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    .line 303
    .local v3, "userData":[B
    const/4 v4, 0x0

    .line 305
    .local v4, "messageReference":I
    const-string v2, "CTC Push Message Decoding"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 327
    const/16 v2, 0x14

    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 328
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    shl-int/lit8 v4, v2, 0x8

    .line 329
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    or-int/2addr v4, v2

    .line 330
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CTC Wap Push Reference Id:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 346
    const/16 v2, 0x15

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 347
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    .line 348
    .local v19, "num_fileds":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CTC Wap Push num_fileds: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 350
    move/from16 v0, v19

    new-array v3, v0, [B

    .line 351
    const/16 v18, 0x0

    .local v18, "loop":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 352
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v18
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 354
    .end local v18    # "loop":I
    .end local v19    # "num_fileds":I
    :catch_0
    move-exception v15

    .line 355
    .local v15, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BearerData decode failed: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 358
    .end local v15    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_8
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v2

    goto/16 :goto_0

    .line 362
    .end local v3    # "userData":[B
    .end local v4    # "messageReference":I
    .end local v16    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_9
    const-string v2, "CTC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_WapPushFormat4"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0xfdf1

    move/from16 v0, v22

    if-ne v2, v0, :cond_b

    .line 364
    const-string v2, "CTC DM Message Decoding"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseCtcFota()V

    .line 366
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCtcFota()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 367
    new-instance v5, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v7

    const/16 v9, 0xb84

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 370
    .local v5, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    goto/16 :goto_0

    .line 373
    .end local v5    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 382
    :cond_b
    const/16 v2, 0x1001

    move/from16 v0, v22

    if-eq v2, v0, :cond_c

    const/16 v2, 0x1002

    move/from16 v0, v22

    if-eq v2, v0, :cond_c

    const/16 v2, 0x1005

    move/from16 v0, v22

    if-eq v2, v0, :cond_c

    const/16 v2, 0x1006

    move/from16 v0, v22

    if-eq v2, v0, :cond_c

    const/4 v2, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/SmsMessage;->getCDMAMessageType()I

    move-result v7

    if-eq v2, v7, :cond_c

    .line 387
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 459
    :cond_c
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v21

    .line 461
    .local v21, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->setWpaPushAddressTimeStamp(Ljava/lang/String;J)V

    .line 463
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v14

    .line 465
    .local v14, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz v21, :cond_d

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_d

    const/16 v2, 0xb84

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v2, v7, :cond_d

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_f

    .line 467
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 468
    const/16 v2, 0xa

    goto/16 :goto_0

    .line 465
    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    .line 471
    :cond_e
    invoke-virtual {v14}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v6

    .line 472
    .local v6, "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-virtual {v6}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 474
    const/4 v7, 0x1

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getEncoding()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    :goto_5
    const/16 v2, 0xa

    goto/16 :goto_0

    .line 476
    :catch_1
    move-exception v13

    .line 477
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "CdmaInboundSmsHandler"

    const-string v7, "fail to store blocked sms on mdm database"

    invoke-static {v2, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 485
    .end local v6    # "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    goto/16 :goto_0

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_3
        0x1005 -> :sswitch_1
        0x1006 -> :sswitch_2
        0xfdea -> :sswitch_3
        0xfdf1 -> :sswitch_3
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x2

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    const-string v0, "3gpp2"

    return-object v0
.end method

.method protected handleBlockedSms([BI)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "sendType"    # I

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getEncoding()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1024
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchBlockedSms([BI)V

    .line 1026
    :cond_0
    return-void
.end method

.method protected insertLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;I)V
    .locals 5
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "messageCount"    # I

    .prologue
    .line 890
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 891
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "date"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    const-string v2, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v2, "address"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v2, "reference_number"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionId()I

    move-result v3

    or-int/lit16 v3, v3, -0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 895
    const-string v2, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    const-string v2, "sequence"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeq()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    const-string v2, "destination_port"

    const/16 v3, 0x7f40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 902
    const-string v2, "CdmaInboundSmsHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGU_CBS] exception at insertLGTCBSPdu "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method protected isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const-string v0, "CdmaInboundSmsHandler"

    const-string v1, "Duplicate found. Samsung"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x1

    .line 693
    :goto_0
    return v0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mDuplicateFilter:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$CDMASmsDuplicateFilter;->addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 693
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected kddiJudgeDeliveryFromServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 14
    .param p1, "smsb"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const v13, 0x8021

    const v12, 0x8001

    const/16 v11, 0x3f

    const/16 v10, 0x21

    const/4 v9, 0x1

    .line 1032
    const/4 v3, 0x0

    .line 1035
    .local v3, "maintenanceMode":I
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.kddi.maintenanceMode"

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1036
    .local v0, "context":Landroid/content/Context;
    const-string v6, "pref"

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1037
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v6, "maintenanceMode"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1043
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v5

    .line 1044
    .local v5, "serviceCategory":I
    const/4 v2, 0x0

    .line 1045
    .local v2, "isDelivery":Z
    packed-switch v3, :pswitch_data_0

    .line 1072
    :cond_0
    :goto_1
    const-string v6, "CdmaInboundSmsHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kddiJudgeDeliveryFromServiceCategory maintenanceMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " serviceCategory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDelivery: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return v2

    .line 1038
    .end local v2    # "isDelivery":Z
    .end local v5    # "serviceCategory":I
    :catch_0
    move-exception v1

    .line 1039
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CdmaInboundSmsHandler"

    const-string v7, "maintenanceMode app not found"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1047
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "isDelivery":Z
    .restart local v5    # "serviceCategory":I
    :pswitch_0
    if-eq v5, v9, :cond_1

    if-gt v10, v5, :cond_0

    if-gt v5, v11, :cond_0

    .line 1048
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 1052
    :pswitch_1
    if-eq v5, v12, :cond_2

    if-gt v13, v5, :cond_0

    const v6, 0x803f

    if-gt v5, v6, :cond_0

    .line 1053
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1057
    :pswitch_2
    const v6, 0xc001

    if-eq v5, v6, :cond_3

    const v6, 0xc021

    if-gt v6, v5, :cond_0

    const v6, 0xc03f

    if-gt v5, v6, :cond_0

    .line 1058
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1062
    :pswitch_3
    if-eq v5, v9, :cond_6

    if-gt v10, v5, :cond_4

    if-le v5, v11, :cond_6

    :cond_4
    if-eq v5, v12, :cond_6

    if-gt v13, v5, :cond_5

    const v6, 0x803f

    if-le v5, v6, :cond_6

    :cond_5
    const v6, 0xc001

    if-eq v5, v6, :cond_6

    const v6, 0xc021

    if-gt v6, v5, :cond_0

    const v6, 0xc03f

    if-gt v5, v6, :cond_0

    .line 1065
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected kddiJudgeDeliveryFromServiceCategoryForWIFI(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 9
    .param p1, "smsb"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 1077
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v5

    .line 1078
    .local v5, "serviceCategory":I
    const/4 v3, 0x0

    .line 1079
    .local v3, "maintenanceMode":I
    const/4 v2, 0x0

    .line 1083
    .local v2, "isDelivery":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.kddi.maintenanceMode"

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1084
    .local v0, "context":Landroid/content/Context;
    const-string v6, "pref"

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1085
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v6, "maintenanceMode"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1091
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 1098
    const v6, 0x8001

    if-eq v5, v6, :cond_0

    const v6, 0x8028

    if-ne v5, v6, :cond_1

    .line 1099
    :cond_0
    const/4 v2, 0x1

    .line 1103
    :cond_1
    :goto_1
    const-string v6, "CdmaInboundSmsHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "kddiJudgeDeliveryFromServiceCategoryForWIFI: serviceCategory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isDelivery: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return v2

    .line 1086
    :catch_0
    move-exception v1

    .line 1087
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CdmaInboundSmsHandler"

    const-string v7, "maintenanceMode app not found"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1093
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/16 v6, 0x26

    if-eq v5, v6, :cond_2

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    .line 1094
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1091
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->dispose()V

    .line 137
    const-string v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 138
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 139
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 518
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 520
    return-void
.end method

.method protected processLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 29
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 911
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionId()I

    move-result v3

    or-int/lit16 v0, v3, -0x100

    move/from16 v23, v0

    .line 912
    .local v23, "referenceNumber":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeq()I

    move-result v25

    .line 913
    .local v25, "sequenceNumber":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getSessionSeqEos()I

    move-result v26

    .line 914
    .local v26, "sessionSeqEos":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    .line 915
    .local v14, "address":Ljava/lang/String;
    const/16 v19, 0x0

    .line 916
    .local v19, "messageCount":I
    const/4 v15, 0x0

    .line 917
    .local v15, "cursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 918
    .local v16, "cursorCount":I
    const/16 v20, 0x0

    .line 919
    .local v20, "okToDispatch":Z
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]processLGTCBSPdu referenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sessionSeqEos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :try_start_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 924
    .local v22, "refNumber":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 925
    .local v24, "seqNumber":Ljava/lang/String;
    const/16 v3, 0x7f40

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 927
    .local v17, "destPort":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=? AND destination_port=?"

    const/4 v8, 0x4

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v14, v7, v8

    const/4 v8, 0x1

    aput-object v22, v7, v8

    const/4 v8, 0x2

    aput-object v24, v7, v8

    const/4 v8, 0x3

    aput-object v17, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 932
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 933
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    const/4 v3, 0x1

    .line 1013
    if-eqz v15, :cond_0

    .line 1014
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .end local v17    # "destPort":Ljava/lang/String;
    .end local v22    # "refNumber":Ljava/lang/String;
    .end local v24    # "seqNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 938
    .restart local v17    # "destPort":Ljava/lang/String;
    .restart local v22    # "refNumber":Ljava/lang/String;
    .restart local v24    # "seqNumber":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 941
    const-string v27, "reference_number<>? AND destination_port=?"

    .line 942
    .local v27, "whereDel":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v3, 0x0

    aput-object v22, v28, v3

    const/4 v3, 0x1

    aput-object v17, v28, v3

    .line 943
    .local v28, "whereDelArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 945
    const-string v6, "address=? AND reference_number=? AND destination_port=?"

    .line 946
    .local v6, "where":Ljava/lang/String;
    const-string v11, "address=? AND reference_number=? AND destination_port=? AND count<>0"

    .line 947
    .local v11, "whereEOS":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v7, v3

    const/4 v3, 0x1

    aput-object v22, v7, v3

    const/4 v3, 0x2

    aput-object v17, v7, v3

    .line 948
    .local v7, "whereArgs":[Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_5

    .line 949
    add-int/lit8 v19, v25, 0x1

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 951
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 952
    add-int/lit8 v3, v16, 0x1

    move/from16 v0, v19

    if-le v3, v0, :cond_2

    .line 953
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]cursorCount goes against messageCount[1]???!!!! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    const/4 v3, 0x1

    .line 1013
    if-eqz v15, :cond_0

    .line 1014
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 955
    :cond_2
    add-int/lit8 v3, v16, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_4

    .line 956
    :try_start_2
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]collect the complete set of sequence! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->completeLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;Landroid/database/Cursor;I)Z

    move-result v20

    .line 997
    :goto_1
    if-eqz v20, :cond_3

    .line 998
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v21, v0

    .line 999
    .local v21, "pdus":[[B
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v4

    aput-object v4, v21, v3

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1003
    const-string v3, "CdmaInboundSmsHandler"

    const-string v4, "[LGU_CBS]dispatchPdus!! "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdus([[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1007
    .end local v21    # "pdus":[[B
    :cond_3
    const/4 v3, 0x1

    .line 1013
    if-eqz v15, :cond_0

    .line 1014
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 960
    :cond_4
    :try_start_3
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]EOS has comed but it can\'t make complete set! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->insertLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1008
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v11    # "whereEOS":Ljava/lang/String;
    .end local v17    # "destPort":Ljava/lang/String;
    .end local v22    # "refNumber":Ljava/lang/String;
    .end local v24    # "seqNumber":Ljava/lang/String;
    .end local v27    # "whereDel":Ljava/lang/String;
    .end local v28    # "whereDelArgs":[Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 1009
    .local v18, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1010
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS] exception at processLGTCBSPdu "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1011
    const/4 v3, 0x1

    .line 1013
    if-eqz v15, :cond_0

    .line 1014
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 965
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v6    # "where":Ljava/lang/String;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    .restart local v11    # "whereEOS":Ljava/lang/String;
    .restart local v17    # "destPort":Ljava/lang/String;
    .restart local v22    # "refNumber":Ljava/lang/String;
    .restart local v24    # "seqNumber":Ljava/lang/String;
    .restart local v27    # "whereDel":Ljava/lang/String;
    .restart local v28    # "whereDelArgs":[Ljava/lang/String;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 966
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 967
    const/4 v3, 0x1

    move/from16 v0, v16

    if-le v0, v3, :cond_6

    .line 969
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]EOS is more than one???!!!! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 970
    const/4 v3, 0x1

    .line 1013
    if-eqz v15, :cond_0

    .line 1014
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 971
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_a

    .line 972
    :try_start_6
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 973
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 974
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->PDU_SEQUENCE_PORT_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 977
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 978
    add-int/lit8 v3, v16, 0x1

    move/from16 v0, v19

    if-le v3, v0, :cond_7

    .line 979
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]cursorCount goes against messageCount[2]???!!!! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 980
    const/4 v3, 0x1

    .line 1013
    if-eqz v15, :cond_0

    .line 1014
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 981
    :cond_7
    add-int/lit8 v3, v16, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_8

    .line 982
    :try_start_7
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]collect the complete set of sequence! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->completeLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;Landroid/database/Cursor;I)Z

    move-result v20

    goto/16 :goto_1

    .line 986
    :cond_8
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]It\'s EOS but it can\'t make complete set! cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->insertLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 1013
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v11    # "whereEOS":Ljava/lang/String;
    .end local v17    # "destPort":Ljava/lang/String;
    .end local v22    # "refNumber":Ljava/lang/String;
    .end local v24    # "seqNumber":Ljava/lang/String;
    .end local v27    # "whereDel":Ljava/lang/String;
    .end local v28    # "whereDelArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_9

    .line 1014
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    .line 991
    .restart local v6    # "where":Ljava/lang/String;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    .restart local v11    # "whereEOS":Ljava/lang/String;
    .restart local v17    # "destPort":Ljava/lang/String;
    .restart local v22    # "refNumber":Ljava/lang/String;
    .restart local v24    # "seqNumber":Ljava/lang/String;
    .restart local v27    # "whereDel":Ljava/lang/String;
    .restart local v28    # "whereDelArgs":[Ljava/lang/String;
    :cond_a
    :try_start_8
    const-string v3, "CdmaInboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU_CBS]EOS has not been arrived yet cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequenceNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->insertLGTCBSPdu(Lcom/android/internal/telephony/SmsMessageBase;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method
