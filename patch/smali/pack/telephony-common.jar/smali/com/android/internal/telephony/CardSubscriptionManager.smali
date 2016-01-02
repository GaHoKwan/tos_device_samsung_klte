.class public Lcom/android/internal/telephony/CardSubscriptionManager;
.super Landroid/os/Handler;
.source "CardSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CardSubscriptionManager$1;,
        Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    }
.end annotation


# static fields
.field private static final EVENT_GET_ICCID_DONE:I = 0x3

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x0

.field private static final EVENT_RADIO_ON:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x5

.field private static final EVENT_UPDATE_UICC_STATUS:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CardSubscriptionManager"

.field private static sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;


# instance fields
.field private mAllCardsInfoAvailable:Z

.field private mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

.field private mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

.field private mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

.field private mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mNumPhones:I

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mRadioOn:[Z

.field private mUiccCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateUiccStatusContext:I


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 178
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    .line 152
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    .line 153
    iput v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    .line 157
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    .line 160
    iput-object v5, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    .line 162
    iput-boolean v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 179
    const-string v1, "CardSubscriptionManager"

    const-string v2, "Constructor - Enter"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-object p2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    aput-boolean v4, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/SubscriptionData;

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    .line 195
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/CardSubscriptionManager;Lcom/android/internal/telephony/uicc/UiccCard;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    new-array v1, v1, [Landroid/os/RegistrantList;

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    .line 200
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    new-array v1, v1, [Landroid/os/RegistrantList;

    iput-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    .line 201
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    if-ge v0, v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    aput-object v2, v1, v0

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    aput-object v2, v1, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    :cond_2
    const-string v1, "CardSubscriptionManager"

    const-string v2, "Constructor - Exit"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method private appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 612
    sget-object v0, Lcom/android/internal/telephony/CardSubscriptionManager$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 624
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 614
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 616
    :pswitch_1
    const-string v0, "SIM"

    goto :goto_0

    .line 618
    :pswitch_2
    const-string v0, "USIM"

    goto :goto_0

    .line 620
    :pswitch_3
    const-string v0, "RUIM"

    goto :goto_0

    .line 622
    :pswitch_4
    const-string v0, "CSIM"

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillAppIndex(Lcom/android/internal/telephony/Subscription;I)V
    .locals 3
    .param p1, "cardSub"    # Lcom/android/internal/telephony/Subscription;
    .param p2, "appIndex"    # I

    .prologue
    const/4 v2, -0x1

    .line 599
    iget-object v0, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 600
    iput v2, p1, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 601
    iput v2, p1, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const-string v0, "SIM"

    iget-object v1, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "USIM"

    iget-object v1, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    :cond_2
    iput p2, p1, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 604
    iput v2, p1, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0

    .line 605
    :cond_3
    const-string v0, "RUIM"

    iget-object v1, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CSIM"

    iget-object v1, p1, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    :cond_4
    iput v2, p1, Lcom/android/internal/telephony/Subscription;->m3gppIndex:I

    .line 607
    iput p2, p1, Lcom/android/internal/telephony/Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/android/internal/telephony/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/CardSubscriptionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 166
    const-class v1, Lcom/android/internal/telephony/CardSubscriptionManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "CardSubscriptionManager"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v0, Lcom/android/internal/telephony/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CardSubscriptionManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    .line 170
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized handleGetIccIdDone(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 428
    monitor-enter p0

    if-nez p1, :cond_0

    .line 429
    :try_start_0
    const-string v4, "CardSubscriptionManager"

    const-string v5, "handleGetIccIdDone: parameter is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :goto_0
    monitor-exit p0

    return-void

    .line 433
    :cond_0
    :try_start_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 434
    .local v2, "data":[B
    const/4 v1, 0x0

    .line 436
    .local v1, "cardIndex":I
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 437
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 440
    :cond_1
    const-string v4, "CardSubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetIccIdDone: cardIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_2

    .line 443
    const-string v4, "CardSubscriptionManager"

    const-string v5, "handleGetIccIdDone: radio not available - EXIT"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    .end local v1    # "cardIndex":I
    .end local v2    # "data":[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 447
    .restart local v1    # "cardIndex":I
    .restart local v2    # "data":[B
    :cond_2
    const/4 v3, 0x0

    .line 449
    .local v3, "iccId":Ljava/lang/String;
    :try_start_2
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 450
    const-string v4, "CardSubscriptionManager"

    const-string v5, "Exception in GET ICCID"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setCardState(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)V

    .line 457
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 459
    iget-object v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setIccId(Ljava/lang/String;)V

    .line 460
    const-string v4, "CardSubscriptionManager"

    const-string v5, "============================================================="

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v4, "CardSubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET ICCID DONE. ICCID of card["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v4, "CardSubscriptionManager"

    const-string v5, "============================================================="

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICCID Read Done for card : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/CardSubscriptionManager;->updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :cond_3
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1
.end method

.method private handleIccChanged(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 306
    const/4 v3, 0x0

    .line 308
    .local v3, "cardStateChanged":Z
    const-string v6, "CardSubscriptionManager"

    const-string v7, "handleIccChanged: ENTER"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 311
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 312
    .local v1, "cardIndex":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-boolean v6, v6, v7

    if-nez v6, :cond_0

    .line 313
    const-string v6, "CardSubscriptionManager"

    const-string v7, "handleIccChanged: radio not available - EXIT"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v1    # "cardIndex":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 316
    .restart local v1    # "cardIndex":Ljava/lang/Integer;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    check-cast v6, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    .line 317
    .local v5, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 319
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    const-string v6, "CardSubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cardIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new uiccCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " old card = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v0, :cond_5

    .line 324
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v4

    .line 325
    .local v4, "oldCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setUiccCard(Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 327
    const-string v6, "CardSubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: oldCardState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v5, :cond_4

    .line 330
    const-string v6, "CardSubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: new uiccCard.getCardState() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    if-eq v6, v4, :cond_2

    .line 335
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v6, v7, :cond_1

    .line 336
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setIccId(Ljava/lang/String;)V

    .line 337
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 339
    :cond_1
    const/4 v3, 0x1

    .line 350
    .end local v4    # "oldCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 351
    .local v2, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    const-string v6, "CardSubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: cardStateChanged = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " card info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v6, v7, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 355
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->updateIccIds(I)Z

    .line 360
    .end local v0    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v1    # "cardIndex":Ljava/lang/Integer;
    .end local v2    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    .end local v5    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_3
    :goto_2
    const-string v6, "CardSubscriptionManager"

    const-string v7, "handleIccChanged: EXIT"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    .restart local v0    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .restart local v1    # "cardIndex":Ljava/lang/Integer;
    .restart local v4    # "oldCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .restart local v5    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_4
    const-string v6, "CardSubscriptionManager"

    const-string v7, "handleIccChanged: new uiccCard is NULL"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v3, 0x1

    goto :goto_1

    .line 345
    .end local v4    # "oldCardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_5
    if-nez v0, :cond_2

    .line 346
    const/4 v3, 0x1

    .line 347
    iget-object v6, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-direct {v8, p0, v5}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/CardSubscriptionManager;Lcom/android/internal/telephony/uicc/UiccCard;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 356
    .restart local v2    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    :cond_6
    if-eqz v3, :cond_3

    .line 357
    const-string v6, "ICC STATUS CHANGED"

    invoke-direct {p0, v1, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isIccIdAvailable(I)Z
    .locals 3
    .param p1, "cardIndex"    # I

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 368
    .local v0, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x1

    .line 372
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAllCardsInfoAvailable()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 630
    return-void
.end method

.method private notifyCardInfoAvailable(I)V
    .locals 1
    .param p1, "cardIndex"    # I

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 639
    return-void
.end method

.method private notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;)V
    .locals 3
    .param p1, "cardIndex"    # I
    .param p2, "reason"    # Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    .prologue
    const/4 v2, 0x0

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 635
    return-void
.end method

.method private declared-synchronized onUpdateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 16
    .param p1, "cardIndex"    # Ljava/lang/Integer;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus: cardIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " reason = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v5, 0x0

    .line 486
    .local v5, "cardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 487
    .local v2, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    const/4 v10, 0x0

    .line 488
    .local v10, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v4, 0x0

    .line 489
    .local v4, "cardRemoved":Z
    const/4 v3, 0x0

    .line 491
    .local v3, "cardInserted":Z
    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v10

    .line 495
    :cond_0
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-boolean v12, v12, v13

    if-nez v12, :cond_7

    .line 496
    :cond_1
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): mRadioOn["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget-boolean v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): NO Card!!!!! at index : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    if-eqz v12, :cond_2

    .line 500
    const/4 v4, 0x1

    .line 502
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    aput-object v14, v12, v13

    .line 583
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 584
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyCardInfoAvailable(I)V

    .line 586
    :cond_4
    if-eqz v4, :cond_5

    .line 587
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v13, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;)V

    .line 592
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CardSubscriptionManager;->isValidCards()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-boolean v12, v12, v13

    if-eqz v12, :cond_6

    .line 593
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyAllCardsInfoAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :cond_6
    monitor-exit p0

    return-void

    .line 504
    :cond_7
    :try_start_1
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    .line 506
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): cardIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " cardInfo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v7, 0x0

    .line 510
    .local v7, "numApps":I
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v12, :cond_8

    .line 511
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v7

    .line 513
    :cond_8
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): Number of apps : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v12, :cond_e

    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    if-lez v7, :cond_e

    .line 518
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): mCardSubData["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/android/internal/telephony/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    if-eq v12, v13, :cond_3

    .line 527
    :cond_9
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdateUiccStatus(): New card, update card info at index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    new-instance v14, Lcom/android/internal/telephony/SubscriptionData;

    invoke-direct {v14, v7}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    aput-object v14, v12, v13

    .line 532
    const/4 v1, 0x0

    .local v1, "appIndex":I
    :goto_1
    if-ge v1, v7, :cond_d

    .line 533
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v12, v1

    .line 534
    .local v6, "cardSub":Lcom/android/internal/telephony/Subscription;
    invoke-virtual {v10, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v11

    .line 537
    .local v11, "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v11, :cond_b

    .line 538
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 542
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/internal/telephony/Subscription;->appId:Ljava/lang/String;

    .line 543
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAppLabel()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/internal/telephony/Subscription;->appLabel:Ljava/lang/String;

    .line 544
    invoke-virtual {v2}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/internal/telephony/Subscription;->iccId:Ljava/lang/String;

    .line 546
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v9

    .line 547
    .local v9, "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/CardSubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v8

    .line 549
    .local v8, "subAppType":Ljava/lang/String;
    const-string v12, "UNKNOWN"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 550
    iput-object v8, v6, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 559
    :goto_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v12, v13, :cond_a

    .line 560
    const-string v12, "CardSubscriptionManager"

    const-string v13, "**********************************************************************************"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v12, "CardSubscriptionManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AppState of the UiccCardApplication @ cardIndex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " appIndex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is APPSTATE_READY!!!!!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v12, "CardSubscriptionManager"

    const-string v13, "Android expectes APPSTATE_DETECTED before selecting the subscriptions!!!!!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v12, "CardSubscriptionManager"

    const-string v13, "WARNING!!! Please configure the NV items properly to select the subscriptions from UI"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v12, "CardSubscriptionManager"

    const-string v13, "*************************************************************************************"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->fillAppIndex(Lcom/android/internal/telephony/Subscription;I)V

    .line 532
    .end local v8    # "subAppType":Ljava/lang/String;
    .end local v9    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 552
    .restart local v8    # "subAppType":Ljava/lang/String;
    .restart local v9    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_c
    const/4 v12, 0x0

    iput-object v12, v6, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    .line 553
    const-string v12, "CardSubscriptionManager"

    const-string v13, "onUpdateUiccStatus(): UNKNOWN APP"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 483
    .end local v1    # "appIndex":I
    .end local v2    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    .end local v3    # "cardInserted":Z
    .end local v4    # "cardRemoved":Z
    .end local v5    # "cardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v6    # "cardSub":Lcom/android/internal/telephony/Subscription;
    .end local v7    # "numApps":I
    .end local v8    # "subAppType":Ljava/lang/String;
    .end local v9    # "type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v10    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v11    # "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 575
    .restart local v1    # "appIndex":I
    .restart local v2    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    .restart local v3    # "cardInserted":Z
    .restart local v4    # "cardRemoved":Z
    .restart local v5    # "cardState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .restart local v7    # "numApps":I
    .restart local v10    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 578
    .end local v1    # "appIndex":I
    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    aput-object v14, v12, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private processRadioOn(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 291
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 293
    .local v0, "cardIndex":Ljava/lang/Integer;
    const-string v1, "CardSubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRadioOn on cardIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string v1, "CardSubscriptionManager"

    const-string v2, "Invalid Index!!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processRadioUnavailable(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 273
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 275
    .local v0, "cardIndex":Ljava/lang/Integer;
    const-string v1, "CardSubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRadioUnavailable on cardIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean v4, v1, v2

    .line 279
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->resetCardInfo(I)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;)V

    .line 284
    iput-boolean v4, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string v1, "CardSubscriptionManager"

    const-string v2, "Invalid Index!!!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processSimRefresh(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 256
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 257
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 259
    .local v1, "state":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 260
    .local v0, "slot":Ljava/lang/Integer;
    const-string v2, "CardSubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSimRefresh: slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " refreshResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mNumPhones:I

    if-ge v2, v3, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CardSubscriptionManager;->resetCardInfo(I)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;)V

    .line 270
    .end local v0    # "slot":Ljava/lang/Integer;
    .end local v1    # "state":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v2, "CardSubscriptionManager"

    const-string v3, "processSimRefresh received without input"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetCardInfo(I)V
    .locals 4
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 377
    const-string v0, "CardSubscriptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCardInfo(): cardIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aput-object v3, v0, p1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/CardSubscriptionManager;Lcom/android/internal/telephony/uicc/UiccCard;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_1
    return-void
.end method

.method private updateIccIds(I)Z
    .locals 10
    .param p1, "cardIndex"    # I

    .prologue
    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, "readStarted":Z
    iget-object v7, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 394
    .local v1, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 396
    .local v6, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const-string v7, "CardSubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateIccIds: cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cardInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v7, v8, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->isReadIccIdInProgress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "strCardIndex":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/CardSubscriptionManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 406
    .local v4, "response":Landroid/os/Message;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 407
    .local v0, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    .line 409
    .local v2, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v2, :cond_0

    .line 410
    const-string v7, "CardSubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateIccIds: get ICCID for cardInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/16 v7, 0x2fe2

    invoke-virtual {v2, v7, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 412
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 413
    const/4 v3, 0x1

    .line 418
    .end local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v4    # "response":Landroid/os/Message;
    .end local v5    # "strCardIndex":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .param p1, "cardIndex"    # Ljava/lang/Integer;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 470
    iget v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    .line 471
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/android/internal/telephony/CardSubscriptionManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 475
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->sendMessage(Landroid/os/Message;)Z

    .line 476
    return-void
.end method


# virtual methods
.method public getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;
    .locals 1
    .param p1, "cardIndex"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/SubscriptionData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 220
    :pswitch_0
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->processRadioUnavailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 225
    :pswitch_1
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_RADIO_ON"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->processRadioOn(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 230
    :pswitch_2
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_ICC_CHANGED"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->handleIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 235
    :pswitch_3
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_READ_ICCID_DONE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->handleGetIccIdDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 240
    :pswitch_4
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_UPDATE_UICC_STATUS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->onUpdateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_5
    const-string v0, "CardSubscriptionManager"

    const-string v1, "EVENT_SIM_REFRESH"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->processSimRefresh(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isCardAbsentOrError(I)Z
    .locals 3
    .param p1, "cardIndex"    # I

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 691
    .local v0, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidCards()Z
    .locals 4

    .prologue
    .line 679
    iget-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;

    .line 680
    .local v0, "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 683
    :cond_1
    const/4 v2, 0x0

    .line 686
    .end local v0    # "cardInfo":Lcom/android/internal/telephony/CardSubscriptionManager$CardInfo;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 642
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 643
    .local v0, "r":Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 648
    monitor-exit v2

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "cardIndex"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 659
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 660
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 662
    monitor-exit v2

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "cardIndex"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 652
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 653
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 654
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 655
    monitor-exit v2

    .line 656
    return-void

    .line 655
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPhones([Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "p"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/CardSubscriptionManager;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method
