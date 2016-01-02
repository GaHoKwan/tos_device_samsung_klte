.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;,
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final ALLRECEIVE_MODE:B = 0x3t

.field private static final COMMERCIAL_MODE:B = 0x0t

.field static final ETWS_NOTIFICATION:I = 0x6f

.field private static final KDDITEST_MODE:B = 0x2t

.field private static final MANUFACTURETEST_MODE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "GsmCellBroadcastHandler"

.field private static final VDBG:Z

.field private static mCid:I

.field private static mFlagDupCB:Z

.field private static mLac:I

.field private static mPlmn:Ljava/lang/String;

.field private static mSavedPdu:[B

.field private static mSmsCbDuplicateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNotification:Landroid/app/Notification;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field

.field private pre_location:Landroid/telephony/SmsCbLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 91
    const-string v0, "GsmCellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 92
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method private handleGsmBroadcastSms([BZ)Landroid/telephony/SmsCbMessage;
    .locals 24
    .param p1, "receivedPdu"    # [B
    .param p2, "flagSaved"    # Z

    .prologue
    .line 158
    :try_start_0
    const-string v21, "GsmCellBroadcastHandler"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleBroadcastSms mFlagDupCB ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", SavedMsg= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "power"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    .line 160
    .local v20, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v21

    if-nez v21, :cond_0

    if-nez p2, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 164
    :cond_0
    const/4 v13, -0x1

    .line 165
    .local v13, "lac":I
    const/4 v5, -0x1

    .line 166
    .local v5, "cid":I
    const-string v21, "gsm.operator.numeric"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 168
    .local v19, "plmn":Ljava/lang/String;
    if-nez p2, :cond_4

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    .line 173
    .local v6, "cl":Landroid/telephony/CellLocation;
    instance-of v0, v6, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 174
    move-object v0, v6

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v4, v0

    .line 175
    .local v4, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v13

    .line 176
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    .line 187
    .end local v4    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v6    # "cl":Landroid/telephony/CellLocation;
    :cond_1
    :goto_0
    new-instance v9, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 190
    .local v9, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 202
    :pswitch_0
    new-instance v15, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 208
    .local v15, "location":Landroid/telephony/SmsCbLocation;
    :goto_1
    const-string v21, "GsmCellBroadcastHandler"

    const-string v22, "[CB] DuplicatedCbMessage: checking if location is changed"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v21, "GsmCellBroadcastHandler"

    invoke-virtual {v15}, Landroid/telephony/SmsCbLocation;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->pre_location:Landroid/telephony/SmsCbLocation;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/telephony/SmsCbLocation;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->clearDuplicatedCbMessages()V

    .line 213
    :cond_2
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->pre_location:Landroid/telephony/SmsCbLocation;

    .line 215
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->isDuplicatedCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 216
    const-string v21, "GsmCellBroadcastHandler"

    const-string v22, "[CB] DuplicatedCbMessage: Duplicated CB message exist."

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v21

    if-nez v21, :cond_3

    if-nez p2, :cond_3

    .line 219
    sput-object p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSavedPdu:[B

    .line 220
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    .line 221
    sput v13, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    .line 222
    sput v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    .line 225
    :cond_3
    const/16 v21, 0x0

    .line 303
    .end local v5    # "cid":I
    .end local v9    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v13    # "lac":I
    .end local v15    # "location":Landroid/telephony/SmsCbLocation;
    .end local v19    # "plmn":Ljava/lang/String;
    .end local v20    # "pm":Landroid/os/PowerManager;
    :goto_2
    return-object v21

    .line 179
    .restart local v5    # "cid":I
    .restart local v13    # "lac":I
    .restart local v19    # "plmn":Ljava/lang/String;
    .restart local v20    # "pm":Landroid/os/PowerManager;
    :cond_4
    sget v13, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    .line 180
    sget v5, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    .line 182
    sget-object v21, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    if-eqz v21, :cond_1

    sget-object v21, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 183
    sget-object v19, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    goto :goto_0

    .line 192
    .restart local v9    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    :pswitch_1
    new-instance v15, Landroid/telephony/SmsCbLocation;

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v15, v0, v13, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 193
    .restart local v15    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 197
    .end local v15    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v15, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v19

    invoke-direct {v15, v0, v13, v5}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 198
    .restart local v15    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 230
    :cond_5
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v16

    .line 231
    .local v16, "pageCount":I
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 233
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    invoke-direct {v7, v9, v15}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 236
    .local v7, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[B

    .line 238
    .local v18, "pdus":[[B
    if-nez v18, :cond_6

    .line 241
    move/from16 v0, v16

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_6
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    aput-object p1, v18, v21

    .line 249
    move-object/from16 v3, v18

    .local v3, "arr$":[[B
    array-length v14, v3

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v14, :cond_8

    aget-object v17, v3, v10

    .line 250
    .local v17, "pdu":[B
    if-nez v17, :cond_7

    .line 252
    const/16 v21, 0x0

    goto :goto_2

    .line 249
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 257
    .end local v17    # "pdu":[B
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v3    # "arr$":[[B
    .end local v7    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 269
    .local v12, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 270
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 272
    .local v11, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v13, v5}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v21

    if-nez v21, :cond_9

    .line 273
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 301
    .end local v5    # "cid":I
    .end local v9    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    .end local v13    # "lac":I
    .end local v15    # "location":Landroid/telephony/SmsCbLocation;
    .end local v16    # "pageCount":I
    .end local v18    # "pdus":[[B
    .end local v19    # "plmn":Ljava/lang/String;
    .end local v20    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v8

    .line 302
    .local v8, "e":Ljava/lang/RuntimeException;
    const-string v21, "Error in decoding SMS CB pdu"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 260
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "cid":I
    .restart local v9    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v13    # "lac":I
    .restart local v15    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v16    # "pageCount":I
    .restart local v19    # "plmn":Ljava/lang/String;
    .restart local v20    # "pm":Landroid/os/PowerManager;
    :cond_a
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    .line 261
    .restart local v18    # "pdus":[[B
    const/16 v21, 0x0

    aput-object p1, v18, v21

    goto :goto_4

    .line 299
    .restart local v12    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_b
    move-object/from16 v0, v18

    invoke-static {v9, v15, v0}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    goto/16 :goto_2

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isDuplicatedCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;)Z
    .locals 6
    .param p1, "cbHeader"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .prologue
    .line 403
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;)V

    .line 404
    .local v0, "duplicateInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
    const-string v3, "GsmCellBroadcastHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] DuplicatedCbMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 408
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    .line 410
    .local v1, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
    const-string v3, "GsmCellBroadcastHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] DuplicatedCbMessage: list of duplicated Map. key value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    .end local v1    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 416
    const-string v3, "GsmCellBroadcastHandler"

    const-string v4, "[CB] DuplicatedCbMessage: Add CB header to hash map."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const/4 v3, 0x0

    .line 422
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 108
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 109
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    .line 110
    return-object v0
.end method

.method private setNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 596
    const-string v5, "GsmCellBroadcastHandler"

    const-string v6, "setNotification: create notification "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    .line 599
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 600
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    const/16 v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 601
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    const v6, 0x108008a

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 602
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.LONGLIFE_START_ALERT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 605
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const v6, 0x1040af1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 606
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const v6, 0x1040af2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 608
    .local v0, "details":Ljava/lang/CharSequence;
    const/16 v2, 0x6f

    .line 610
    .local v2, "notificationId":I
    const-string v5, "GsmCellBroadcastHandler"

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

    .line 612
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 613
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 616
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 620
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 621
    return-void
.end method


# virtual methods
.method protected ETWSJudgeDeliveryFromMessageID(I)Z
    .locals 1
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 502
    const/16 v0, 0x1100

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1102

    if-gt p1, v0, :cond_0

    .line 504
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected KddiNotifiyGsmSmsToWIFI([[B)V
    .locals 2
    .param p1, "pdus"    # [[B

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 489
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 490
    return-void
.end method

.method protected NotifiyGsmSmsToEmergencyMode()V
    .locals 2

    .prologue
    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LONGLIFE_ETWS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 495
    return-void
.end method

.method public clearDuplicatedCbMessages()V
    .locals 2

    .prologue
    .line 426
    const-string v0, "GsmCellBroadcastHandler"

    const-string v1, "[CB] DuplicatedCbMessage: Clear duplicated CB Messages from hash map."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbDuplicateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 428
    return-void
.end method

.method protected handleLocationInfo(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 434
    if-eqz p1, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    if-nez v4, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 437
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 438
    .local v3, "states":[Ljava/lang/String;
    const/4 v2, -0x1

    .line 439
    .local v2, "lac":I
    const/4 v0, -0x1

    .line 440
    .local v0, "cid":I
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    .line 442
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v3, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 443
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 445
    :cond_2
    const/4 v4, 0x2

    aget-object v4, v3, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 446
    const/4 v4, 0x2

    aget-object v4, v3, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 453
    :cond_3
    :goto_1
    sget v4, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    if-ne v4, v2, :cond_4

    sget v4, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    if-eq v4, v0, :cond_0

    .line 455
    :cond_4
    const-string v4, "GsmCellBroadcastHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Location is changed during LCD off. Before Lac= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Cid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". After Lac= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Cid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    sput v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mLac:I

    .line 457
    sput v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCid:I

    .line 458
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "GsmCellBroadcastHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected handleOperatorInfo(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 465
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    if-nez v2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 468
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 470
    .local v1, "opNames":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 471
    const/4 v2, 0x2

    aget-object v2, v1, v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPlmn:Ljava/lang/String;

    .line 475
    .end local v1    # "opNames":[Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSavedPdu:[B

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms([BZ)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 477
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_3

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 481
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mFlagDupCB:Z

    goto :goto_0
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 121
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-eqz v3, :cond_0

    .line 124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 125
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v2, v3

    check-cast v2, [B

    .line 126
    .local v2, "receivedPdu":[B
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms([BZ)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    .line 128
    .local v1, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 130
    const/4 v3, 0x1

    .line 133
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v2    # "receivedPdu":[B
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v3

    goto :goto_0
.end method

.method protected kddiJudgeDeliveryFromMessageID(I)Z
    .locals 7
    .param p1, "messageIdentifier"    # I

    .prologue
    const/16 v6, 0x1107

    const/16 v5, 0x1104

    const/16 v4, 0x1103

    const/16 v3, 0x1101

    const/16 v2, 0x1100

    .line 511
    const/4 v1, 0x0

    .line 523
    .local v1, "maintenanceMode":I
    const/4 v0, 0x0

    .line 524
    .local v0, "isDelivery":Z
    packed-switch v1, :pswitch_data_0

    .line 552
    :cond_0
    :goto_0
    const-string v2, "GsmCellBroadcastHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiJudgeDeliveryFromMessageID maintenanceMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDelivery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return v0

    .line 526
    :pswitch_0
    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_2

    if-lt p1, v5, :cond_1

    if-le p1, v6, :cond_2

    :cond_1
    const v2, 0xa003

    if-eq p1, v2, :cond_2

    const v2, 0xa801

    if-lt p1, v2, :cond_0

    const v2, 0xa8ff

    if-gt p1, v2, :cond_0

    .line 528
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 532
    :pswitch_1
    if-eq p1, v4, :cond_3

    const v2, 0xaa01

    if-lt p1, v2, :cond_0

    const v2, 0xaaff

    if-gt p1, v2, :cond_0

    .line 533
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 537
    :pswitch_2
    const v2, 0xab00

    if-lt p1, v2, :cond_0

    const v2, 0xabff

    if-gt p1, v2, :cond_0

    .line 538
    const/4 v0, 0x1

    goto :goto_0

    .line 542
    :pswitch_3
    if-eq p1, v2, :cond_7

    if-eq p1, v3, :cond_7

    if-lt p1, v5, :cond_4

    if-le p1, v6, :cond_7

    :cond_4
    const v2, 0xa003

    if-eq p1, v2, :cond_7

    const v2, 0xa801

    if-lt p1, v2, :cond_5

    const v2, 0xa8ff

    if-le p1, v2, :cond_7

    :cond_5
    if-eq p1, v4, :cond_7

    const v2, 0xaa01

    if-lt p1, v2, :cond_6

    const v2, 0xaaff

    if-le p1, v2, :cond_7

    :cond_6
    const v2, 0xab00

    if-lt p1, v2, :cond_0

    const v2, 0xabff

    if-gt p1, v2, :cond_0

    .line 545
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected kddiJudgeDeliveryFromMessageIDForWIFI(I)Z
    .locals 5
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, "maintenanceMode":I
    const/4 v0, 0x0

    .line 571
    .local v0, "isDelivery":Z
    packed-switch v1, :pswitch_data_0

    .line 578
    const/16 v2, 0x1103

    if-eq p1, v2, :cond_0

    const v2, 0xaa03

    if-ne p1, v2, :cond_1

    .line 579
    :cond_0
    const/4 v0, 0x1

    .line 583
    :cond_1
    :goto_0
    const-string v2, "GsmCellBroadcastHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kddiJudgeDeliveryFromMessageIDForWIFI messageIdentifier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDelivery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return v0

    .line 573
    :pswitch_0
    const/16 v2, 0x1100

    if-eq p1, v2, :cond_2

    const v2, 0xa003

    if-ne p1, v2, :cond_1

    .line 574
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 98
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    .line 99
    return-void
.end method
