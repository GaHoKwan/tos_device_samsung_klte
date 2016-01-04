.class public Lcom/android/internal/telephony/SubscriptionManager;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;,
        Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;,
        Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    }
.end annotation


# static fields
.field private static final EVENT_ALL_CARD_INFO_AVAILABLE:I = 0x2

.field private static final EVENT_CARD_INFO_AVAILABLE:I = 0x0

.field private static final EVENT_CARD_INFO_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_PROCESS_AVAILABLE_CARDS:I = 0xb

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xa

.field private static final EVENT_RADIO_ON:I = 0x9

.field private static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0x5

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x3

.field private static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static final SUB_ACTIVATE_FAILED:Ljava/lang/String; = "ACTIVATE FAILED"

.field public static final SUB_ACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "ACTIVATE NOT SUPPORTED"

.field public static final SUB_ACTIVATE_SUCCESS:Ljava/lang/String; = "ACTIVATE SUCCESS"

.field public static final SUB_DEACTIVATE_FAILED:Ljava/lang/String; = "DEACTIVATE FAILED"

.field public static final SUB_DEACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "DEACTIVATE NOT SUPPORTED"

.field public static final SUB_DEACTIVATE_SUCCESS:Ljava/lang/String; = "DEACTIVATE SUCCESS"

.field public static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field private static final SUB_STATUS_ACTIVATED:I = 0x1

.field private static final SUB_STATUS_DEACTIVATED:I

.field private static mContext:Landroid/content/Context;

.field private static sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;


# instance fields
.field private isSimReset:[Z

.field private mActivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mAllCardsStatusAvailable:Z

.field private mCardCount:I

.field private mCardInfoAvailable:[Z

.field private mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentDds:I

.field private mCurrentSubscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActive:Z

.field private mDeactivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableDdsInProgress:Z

.field private mFlagAllCardsInfo:Z

.field private mIsNewCard:[Z

.field private mNumPhones:I

.field mOldICCID:Ljava/lang/String;

.field private mProxyPhone:[Lcom/android/internal/telephony/Phone;

.field private mQueuedDds:I

.field private mRadioOn:[Z

.field private mSetDdsCompleteMsg:Landroid/os/Message;

.field private mSetDdsRequired:Z

.field private mSetSubscriptionInProgress:Z

.field private mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

.field private mSubActivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubResult:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 216
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    .line 144
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    .line 145
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    .line 146
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    .line 147
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    .line 148
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    .line 155
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 157
    iput-boolean v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    .line 163
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 165
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDataActive:Z

    .line 169
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    .line 171
    iput v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardCount:I

    .line 173
    iput-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mOldICCID:Ljava/lang/String;

    .line 175
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagAllCardsInfo:Z

    .line 217
    const-string v2, "SubscriptionManager"

    const-string v3, "Constructor - Enter"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sput-object p1, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {p1, p2}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    .line 222
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    .line 223
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v2, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, p0, v5, v3}, Lcom/android/internal/telephony/CardSubscriptionManager;->registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v0, p0, v4, v3}, Lcom/android/internal/telephony/CardSubscriptionManager;->registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v0

    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3, v6}, Lcom/android/internal/telephony/CardSubscriptionManager;->registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 236
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0xa

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aput-boolean v5, v2, v0

    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mIsNewCard:[Z

    aput-boolean v5, v2, v0

    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    aput-boolean v5, v2, v0

    .line 246
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    aput-boolean v5, v2, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    .line 250
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    .line 251
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    .line 252
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v2, :cond_2

    .line 253
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v1, v2, v0

    .line 254
    .local v1, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    new-instance v3, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/android/internal/telephony/SubscriptionManager;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 260
    .end local v1    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getDataSubscription()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    .line 261
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructor current active dds is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v2, "SubscriptionManager"

    const-string v3, "Constructor - Exit"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method private getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;
    .locals 1
    .param p1, "subId"    # Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/Subscription;

    return-object v0
.end method

.method private getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Z
    .locals 1
    .param p1, "subId"    # Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    return v0
.end method

.method private getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    .locals 1
    .param p1, "subId"    # Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/Subscription;

    iget-object v0, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    return-object v0
.end method

.method public static getDataSubscription()I
    .locals 2

    .prologue
    .line 1283
    const-string v0, "persist.sys.dataprefer.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionManager;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 195
    const-class v1, Lcom/android/internal/telephony/SubscriptionManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "SubscriptionManager"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/internal/telephony/SubscriptionManager;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    .line 199
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isAllCardsInfoAvailable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 761
    const/4 v4, 0x1

    .line 762
    .local v4, "result":Z
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    .local v0, "arr$":[Z
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, v0, v2

    .line 763
    .local v1, "available":Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move v4, v5

    .line 762
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 763
    goto :goto_1

    .line 765
    .end local v1    # "available":Z
    :cond_1
    if-nez v4, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    if-eqz v7, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    return v6
.end method

.method private isAllRadioOn()Z
    .locals 5

    .prologue
    .line 753
    const/4 v4, 0x1

    .line 754
    .local v4, "result":Z
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    .local v0, "arr$":[Z
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-boolean v3, v0, v1

    .line 755
    .local v3, "radioOn":Z
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 754
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 757
    .end local v3    # "radioOn":Z
    :cond_1
    return v4
.end method

.method private isAnyPendingActivateRequest(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Subscription;

    .line 1002
    .local v0, "newSub":Lcom/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1004
    const/4 v1, 0x1

    .line 1006
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPresentInActivatePendingList(Lcom/android/internal/telephony/Subscription;)Z
    .locals 4
    .param p1, "userSub"    # Lcom/android/internal/telephony/Subscription;

    .prologue
    .line 742
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v3, :cond_1

    .line 743
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v1

    .line 744
    .local v2, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Subscription;

    .line 745
    .local v0, "actPendingSub":Lcom/android/internal/telephony/Subscription;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Subscription;->isSame(Lcom/android/internal/telephony/Subscription;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    const/4 v3, 0x1

    .line 749
    .end local v0    # "actPendingSub":Lcom/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :goto_1
    return v3

    .line 742
    .restart local v0    # "actPendingSub":Lcom/android/internal/telephony/Subscription;
    .restart local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "actPendingSub":Lcom/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private notifySubscriptionActivated(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1091
    return-void
.end method

.method private notifySubscriptionDeactivated(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1083
    return-void
.end method

.method private printPendingActivateRequests()V
    .locals 6

    .prologue
    .line 822
    const-string v3, "SubscriptionManager"

    const-string v4, "ActivatePending Queue : "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 824
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v0

    .line 825
    .local v2, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 826
    .local v1, "newSub":Lcom/android/internal/telephony/Subscription;
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    .end local v1    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private printPendingDeactivateRequests()V
    .locals 6

    .prologue
    .line 834
    const-string v3, "SubscriptionManager"

    const-string v4, "DeactivatePending Queue : "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 836
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v0

    .line 837
    .local v2, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 838
    .local v1, "newSub":Lcom/android/internal/telephony/Subscription;
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    .end local v1    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private processActivateRequests()V
    .locals 3

    .prologue
    .line 900
    const-string v0, "SubscriptionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processActivateRequests: mSetSubscriptionInProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    .line 902
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 904
    :cond_0
    return-void
.end method

.method private processAllCardsInfoAvailable()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 561
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isAllRadioOn()Z

    move-result v6

    if-nez v6, :cond_0

    .line 562
    const-string v6, "SubscriptionManager"

    const-string v7, "processAllCardsInfoAvailable: Radio Not Available "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_0
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x0

    .line 567
    .local v0, "availableCards":I
    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v6, :cond_3

    .line 570
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v6, v6, v1

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->isCardAbsentOrError(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 571
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 569
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 576
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ne v0, v6, :cond_4

    iget-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v6, :cond_4

    .line 577
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    .line 584
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v3

    .line 585
    .local v3, "mCardSubscriptionManager":Lcom/android/internal/telephony/CardSubscriptionManager;
    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v6, [Lcom/android/internal/telephony/SubscriptionData;

    .line 586
    .local v2, "mCardSubscrInfo":[Lcom/android/internal/telephony/SubscriptionData;
    const/4 v1, 0x0

    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v6, :cond_5

    .line 587
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v6

    aput-object v6, v2, v1

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 591
    :cond_5
    new-instance v5, Lcom/android/internal/telephony/SubscriptionData;

    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    .line 594
    .local v5, "mUserSelSub":Lcom/android/internal/telephony/SubscriptionData;
    const-string v6, "ril.MSIMM"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_d

    .line 595
    const-string v6, "SubscriptionManager"

    const-string v7, "processAllCardsInfoAvailable: only SIM2 is presented"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v6, "persist.radio.calldefault.simid"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/4 v1, 0x0

    :goto_3
    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v6, :cond_7

    .line 599
    const-string v6, "ril.ICC_TYPE"

    invoke-static {v6, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 600
    const-string v6, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAllCardsInfoAvailable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ril.ICC_TYPE"

    invoke-static {v8, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ril.ICC_TYPE"

    invoke-static {v8, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v6, "ril.ICC_TYPE"

    invoke-static {v6, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 606
    :cond_7
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v10

    aget-object v7, v2, v10

    iget-object v7, v7, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 607
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v10

    iput v11, v6, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 608
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v10

    iput v11, v6, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 609
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v10

    sget-object v7, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v7, v6, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 610
    sget-object v6, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone2_on"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v7, "SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 614
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_8
    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z

    goto/16 :goto_0

    .line 615
    :cond_9
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v7, "USIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 616
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "2"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 617
    :cond_a
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v7, "RUIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 618
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "3"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 619
    :cond_b
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v7, "CSIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 620
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "4"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 621
    :cond_c
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v10

    iget-object v6, v6, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    const-string v7, "UNKNOWN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 622
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 625
    :cond_d
    const/4 v1, 0x0

    :goto_5
    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v6, :cond_8

    .line 626
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_e

    .line 627
    const-string v6, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processAllCardsInfoAvailable: SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is presented"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v1

    aget-object v7, v2, v1

    iget-object v7, v7, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 631
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v1

    iput v1, v6, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 632
    if-nez v1, :cond_f

    .line 633
    sget-object v6, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone1_on"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 637
    .local v4, "mStatus":I
    :goto_6
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v1

    invoke-static {}, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    aget-object v7, v7, v4

    iput-object v7, v6, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 625
    .end local v4    # "mStatus":I
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 635
    :cond_f
    sget-object v6, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone2_on"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "mStatus":I
    goto :goto_6
.end method

.method private processAvailableCards()V
    .locals 2

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isAllRadioOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    const-string v0, "SubscriptionManager"

    const-string v1, "processAvailableCards: Radio Not Available "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v0, :cond_1

    .line 661
    const-string v0, "SubscriptionManager"

    const-string v1, "processAvailableCards: set subscription in progress!!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    goto :goto_0
.end method

.method private processCardInfoAvailable(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 674
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 676
    .local v0, "cardIndex":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-boolean v6, v6, v7

    if-nez v6, :cond_1

    .line 677
    const-string v6, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoAvailable: Radio Not Available on cardIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-boolean v10, v6, v7

    .line 683
    const-string v6, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoAvailable: CARD:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isAllCardsInfoAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 686
    const-string v6, "SubscriptionManager"

    const-string v7, "All cards info not available!! Waiting for all info before processing"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    :cond_2
    const-string v6, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCardInfoAvailable: mSetSubscriptionInProgress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v6, :cond_3

    .line 693
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    .line 697
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_0

    .line 698
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-boolean v9, v6, v7

    .line 702
    invoke-static {}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v3

    .line 703
    .local v3, "mCardSubscriptionManager":Lcom/android/internal/telephony/CardSubscriptionManager;
    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    new-array v2, v6, [Lcom/android/internal/telephony/SubscriptionData;

    .line 704
    .local v2, "mCardSubscrInfo":[Lcom/android/internal/telephony/SubscriptionData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v6, :cond_4

    .line 705
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v6

    aput-object v6, v2, v1

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 709
    :cond_4
    new-instance v5, Lcom/android/internal/telephony/SubscriptionData;

    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/SubscriptionData;-><init>(I)V

    .line 712
    .local v5, "mUserSelSub":Lcom/android/internal/telephony/SubscriptionData;
    const-string v6, "ril.MSIMM"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 713
    const-string v6, "SubscriptionManager"

    const-string v7, "SIM reset! only SIM2 is presented"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v9

    aget-object v7, v2, v9

    iget-object v7, v7, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 715
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v9

    iput v10, v6, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 716
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v9

    iput v10, v6, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 717
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v9

    sget-object v7, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v7, v6, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 718
    const-string v6, "persist.radio.calldefault.simid"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z

    goto/16 :goto_0

    .line 720
    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v6, :cond_5

    .line 721
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_7

    .line 722
    const-string v6, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM reset! SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is presented"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v1

    aget-object v7, v2, v1

    iget-object v7, v7, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 726
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v1

    iput v1, v6, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 727
    if-nez v1, :cond_8

    .line 728
    sget-object v6, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone1_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 732
    .local v4, "mStatus":I
    :goto_3
    iget-object v6, v5, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    aget-object v6, v6, v1

    invoke-static {}, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->values()[Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v7

    aget-object v7, v7, v4

    iput-object v7, v6, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 720
    .end local v4    # "mStatus":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 730
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "phone2_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "mStatus":I
    goto :goto_3
.end method

.method private processCardInfoNotAvailable(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 774
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_0

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_2

    .line 775
    :cond_0
    const-string v5, "SubscriptionManager"

    const-string v6, "processCardInfoNotAvailable - Exception"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_1
    :goto_0
    return-void

    .line 779
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 780
    .local v0, "cardIndex":Ljava/lang/Integer;
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    .line 782
    .local v2, "reason":Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;
    const-string v7, "SubscriptionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processCardInfoNotAvailable on cardIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput-boolean v6, v7, v8

    .line 789
    const/4 v4, 0x1

    .line 790
    .local v4, "subscriptionRequired":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v7, :cond_4

    .line 791
    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v7, v7, v1

    if-nez v7, :cond_3

    move v4, v5

    .line 790
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v4, v6

    .line 791
    goto :goto_2

    .line 796
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    if-eq v2, v7, :cond_5

    sget-object v7, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    if-ne v2, v7, :cond_7

    .line 800
    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v7, :cond_7

    .line 801
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v7

    aget-object v3, v7, v1

    .line 802
    .local v3, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 803
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V

    .line 804
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 800
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 809
    .end local v3    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    if-ne v2, v7, :cond_8

    .line 810
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 813
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MultiSimManager$CardUnavailableReason;

    if-ne v2, v6, :cond_1

    .line 814
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->isSimReset:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-boolean v5, v6, v7

    goto/16 :goto_0
.end method

.method private processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 340
    const-string v0, "SubscriptionManager"

    const-string v1, "processSetDataSubscriptionDone()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 347
    :cond_0
    return-void
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 420
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;

    .line 421
    .local v4, "setSubParam":Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x0

    .line 422
    .local v0, "cause":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 423
    .local v5, "subStatus":Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    const/4 v1, 0x0

    .line 425
    .local v1, "currentSub":Lcom/android/internal/telephony/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    iget v9, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-boolean v6, v6, v9

    if-nez v6, :cond_1

    .line 426
    const-string v6, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processSetUiccSubscriptionDone: Radio Not Available on subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_3

    .line 432
    const-string v6, "ril.MSIMM"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 433
    const-string v6, "SubscriptionManager"

    const-string v9, "subscription is activated in sim2 only mode. sub id will change to 0"

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iput v8, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    .line 436
    :cond_2
    const-string v6, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifySubscriptionActivated of SUB "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionActivated(I)V

    .line 440
    :cond_3
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_c

    .line 443
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_4

    .line 444
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 445
    .local v2, "error":Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v2, :cond_4

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v6, :cond_4

    .line 447
    iget-object v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_7

    .line 448
    const-string v0, "ACTIVATE NOT SUPPORTED"

    .line 455
    .end local v2    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    :goto_1
    iget-object v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_8

    .line 457
    const-string v6, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subscription of SUB:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Activate Failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-nez v0, :cond_5

    .line 459
    const-string v0, "ACTIVATE FAILED"

    .line 461
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 462
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 465
    .restart local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :goto_2
    const-string v6, "SubscriptionManager"

    const-string v9, "set uicc subscription done. update the current subscriptions"

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6, v1, v5, v0}, Lcom/android/internal/telephony/SubscriptionManager;->updateCurrentSubscription(ILcom/android/internal/telephony/Subscription;Lcom/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;)V

    .line 537
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 539
    iget v9, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_11

    move v6, v7

    :goto_3
    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    .line 542
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    iget v7, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aput-object v0, v6, v7

    .line 544
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v6

    if-nez v6, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v6

    if-nez v6, :cond_0

    .line 549
    iput-boolean v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 551
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_0

    .line 552
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v7, Landroid/os/AsyncResult;

    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-direct {v7, v11, v8, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 449
    .restart local v2    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_7
    iget-object v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_4

    .line 450
    const-string v0, "DEACTIVATE NOT SUPPORTED"

    goto/16 :goto_1

    .line 466
    .end local v2    # "error":Lcom/android/internal/telephony/CommandException$Error;
    :cond_8
    iget-object v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_b

    .line 468
    const-string v6, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subscription of SUB:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Deactivate Failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-nez v0, :cond_9

    .line 474
    iget v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->isAnyPendingActivateRequest(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 475
    const-string v0, "ACTIVATE FAILED"

    .line 480
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_9
    :goto_4
    sget-object v5, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 486
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 488
    .restart local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 482
    :cond_a
    const-string v0, "DEACTIVATE FAILED"

    goto :goto_4

    .line 490
    :cond_b
    const-string v6, "SubscriptionManager"

    const-string v9, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 494
    :cond_c
    iget-object v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_f

    .line 496
    const-string v6, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subscription of SUB:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Activated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object v5, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 498
    const-string v0, "ACTIVATE SUCCESS"

    .line 499
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 501
    .restart local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    if-nez v1, :cond_d

    .line 502
    const-string v6, "SubscriptionManager"

    const-string v7, "currentSub is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 505
    :cond_d
    const-string v6, "ril.MSIMM"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_e

    .line 506
    iput v8, v1, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 510
    :cond_e
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.settings.subscription_activate"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v3, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 513
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_f
    iget-object v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_10

    .line 515
    const-string v6, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subscription of SUB:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Deactivated"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    sget-object v5, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 517
    const-string v0, "DEACTIVATE SUCCESS"

    .line 518
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    check-cast v1, Lcom/android/internal/telephony/Subscription;

    .line 520
    .restart local v1    # "currentSub":Lcom/android/internal/telephony/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget v6, v4, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 523
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.settings.subscription_deactivate"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .restart local v3    # "intent":Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 526
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_10
    const-string v6, "SubscriptionManager"

    const-string v9, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    move v6, v8

    .line 539
    goto/16 :goto_3
.end method

.method private processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 354
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 355
    .local v3, "subId":Ljava/lang/Integer;
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v0, v4, v6

    .line 356
    .local v0, "actStatus":I
    const-string v4, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSubscriptionStatusChanged sub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " actStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-ne v0, v5, :cond_4

    .line 361
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v0, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    .line 363
    iget-boolean v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    if-eqz v4, :cond_1

    .line 364
    const/4 v1, 0x0

    .line 366
    .local v1, "isMatchedDataSub":Z
    const-string v4, "ril.MSIMM"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 367
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    if-ne v4, v5, :cond_0

    .line 368
    const/4 v1, 0x1

    .line 369
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    .line 370
    const-string v4, "SubscriptionManager"

    const-string v7, "change currentDds from 1 to 0 because of SIM2 only"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 377
    const-string v4, "SubscriptionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDataSubscription on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    iput v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    .line 381
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 382
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 385
    .local v2, "msgSetDdsDone":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    aget-object v4, v4, v5

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 386
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    .line 389
    .end local v1    # "isMatchedDataSub":Z
    .end local v2    # "msgSetDdsDone":Landroid/os/Message;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionActivated(I)V

    .line 413
    :goto_2
    return-void

    :cond_2
    move v4, v6

    .line 361
    goto :goto_0

    .line 372
    .restart local v1    # "isMatchedDataSub":Z
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v7, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    if-ne v4, v7, :cond_0

    .line 373
    const/4 v1, 0x1

    goto :goto_1

    .line 393
    .end local v1    # "isMatchedDataSub":Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-boolean v4, v4, v7

    if-nez v4, :cond_5

    .line 394
    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processSubscriptionStatusChanged: Radio Not Available on subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 398
    :cond_5
    if-nez v0, :cond_8

    .line 399
    const-string v4, "1"

    const-string v7, "ril.setSub"

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 400
    const-string v4, "SubscriptionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore SUB_STATUS_DEACTIVATED cause sub["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not deactivated by SubscriptionManager"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 405
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v5, :cond_7

    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    .line 407
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V

    .line 408
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 409
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->triggerUpdateFromAvaialbleCards()V

    goto/16 :goto_2

    :cond_7
    move v5, v6

    .line 405
    goto :goto_3

    .line 411
    :cond_8
    const-string v4, "SubscriptionManager"

    const-string v5, "handleSubscriptionStatusChanged INVALID"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private resetCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)V
    .locals 2
    .param p1, "subId"    # Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    .prologue
    .line 1049
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Subscription;->clear()V

    .line 1050
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1054
    return-void
.end method

.method private startNextPendingActivateRequests()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 949
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->printPendingActivateRequests()V

    .line 950
    const-string v0, "SubscriptionManager"

    const-string v2, "startNextPendingActivateRequests"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v7, v0, :cond_7

    .line 953
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    aget-object v10, v0, v7

    .line 954
    .local v10, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Subscription;

    .line 955
    .local v8, "newSub":Lcom/android/internal/telephony/Subscription;
    if-eqz v8, :cond_0

    iget-object v0, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v0, v2, :cond_0

    .line 956
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->validateActivationRequest(Lcom/android/internal/telephony/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 963
    :cond_1
    iget v11, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 964
    .local v11, "subId":I
    const-string v0, "SIM"

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "USIM"

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const-string v0, "GSM"

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v11

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 966
    const-string v0, "SubscriptionManager"

    const-string v2, "gets New GSM phone"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v11

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(I)V

    .line 974
    :cond_3
    :goto_1
    const-string v0, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNextPendingActivateRequests: Activating SUB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const-string v0, "ril.setSub"

    iget v2, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v9, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;

    iget v0, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-direct {v9, p0, v0, v2}, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/SubscriptionManager;ILcom/android/internal/telephony/Subscription$SubscriptionStatus;)V

    .line 978
    .local v9, "setSubParam":Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x3

    invoke-static {p0, v0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 982
    .local v5, "msgSetUiccSubDone":Landroid/os/Message;
    iget v6, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 983
    .local v6, "ciIndex":I
    const-string v0, "ril.MSIMM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_4

    .line 984
    const/4 v6, 0x0

    .line 987
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v6

    iget v1, v8, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v4, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    move v0, v12

    .line 997
    .end local v5    # "msgSetUiccSubDone":Landroid/os/Message;
    .end local v6    # "ciIndex":I
    .end local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v9    # "setSubParam":Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    .end local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .end local v11    # "subId":I
    :goto_2
    return v0

    .line 968
    .restart local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .restart local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .restart local v11    # "subId":I
    :cond_5
    const-string v0, "RUIM"

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CSIM"

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->appType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_6
    const-string v0, "CDMA"

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v11

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 970
    const-string v0, "SubscriptionManager"

    const-string v2, "gets New CDMA phone"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v11

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(I)V

    goto/16 :goto_1

    .end local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    .end local v11    # "subId":I
    :cond_7
    move v0, v1

    .line 997
    goto :goto_2
.end method

.method private startNextPendingDeactivateRequests()Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 849
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->printPendingDeactivateRequests()V

    .line 851
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v7, v1, :cond_2

    .line 852
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v10, v1, v7

    .line 853
    .local v10, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Subscription;

    .line 854
    .local v8, "newSub":Lcom/android/internal/telephony/Subscription;
    if-eqz v8, :cond_0

    iget-object v1, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 855
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionManager;->validateDeactivationRequest(Lcom/android/internal/telephony/Subscription;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 861
    :cond_1
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNextPendingDeactivateRequests: Need to deactivating SUB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    iget v2, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDataActive:Z

    if-eqz v1, :cond_3

    .line 867
    const-string v0, "SubscriptionManager"

    const-string v1, "Deactivate all the data calls if there is any"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    :goto_1
    move v0, v11

    .line 893
    .end local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .end local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_2
    return v0

    .line 870
    .restart local v8    # "newSub":Lcom/android/internal/telephony/Subscription;
    .restart local v10    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_3
    const-string v1, "SubscriptionManager"

    const-string v2, "startNextPendingDeactivateRequests: Deactivating now"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string v1, "ril.setSub"

    iget v2, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    new-instance v9, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;

    iget v1, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v2, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-direct {v9, p0, v1, v2}, Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/SubscriptionManager;ILcom/android/internal/telephony/Subscription$SubscriptionStatus;)V

    .line 874
    .local v9, "setSubParam":Lcom/android/internal/telephony/SubscriptionManager$SetUiccSubsParams;
    const/4 v1, 0x3

    invoke-static {p0, v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 878
    .local v5, "msgSetUiccSubDone":Landroid/os/Message;
    iget v6, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    .line 879
    .local v6, "ciIndex":I
    const-string v1, "ril.MSIMM"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 880
    const/4 v6, 0x0

    .line 883
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v6

    iget v1, v8, Lcom/android/internal/telephony/Subscription;->slotId:I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v8, Lcom/android/internal/telephony/Subscription;->subId:I

    iget-object v4, v8, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    goto :goto_1
.end method

.method private triggerUpdateFromAvaialbleCards()V
    .locals 1

    .prologue
    .line 649
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 650
    return-void
.end method

.method private updateCurrentSubscription(ILcom/android/internal/telephony/Subscription;Lcom/android/internal/telephony/Subscription$SubscriptionStatus;Ljava/lang/String;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "subscription"    # Lcom/android/internal/telephony/Subscription;
    .param p3, "subStatus"    # Lcom/android/internal/telephony/Subscription$SubscriptionStatus;
    .param p4, "cause"    # Ljava/lang/String;

    .prologue
    .line 1011
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1013
    .local v0, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentSubscription: subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n subscription = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    sget-object v1, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne p3, v1, :cond_1

    .line 1017
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1023
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iput-object p3, v1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1024
    if-nez p4, :cond_0

    .line 1025
    const-string p4, "NO CHANGE IN SUBSCRIPTION"

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object p4, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1028
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1029
    return-void

    .line 1019
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Subscription;->clear()V

    .line 1021
    sget-object p3, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    goto :goto_0
.end method

.method private updateSubscriptionReadiness(IZ)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "ready"    # Z

    .prologue
    .line 1032
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1033
    .local v0, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSubscriptionReadiness("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1042
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    goto :goto_0
.end method

.method private validateActivationRequest(Lcom/android/internal/telephony/Subscription;)Z
    .locals 5
    .param p1, "sub"    # Lcom/android/internal/telephony/Subscription;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 929
    iget v0, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 930
    .local v0, "slotId":I
    const-string v3, "ril.MSIMM"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 931
    const/4 v0, 0x0

    .line 934
    :cond_0
    iget-object v3, p1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    if-ltz v3, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v3, v4, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-ltz v3, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 941
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private validateDeactivationRequest(Lcom/android/internal/telephony/Subscription;)Z
    .locals 5
    .param p1, "sub"    # Lcom/android/internal/telephony/Subscription;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 910
    iget v0, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    .line 911
    .local v0, "slotId":I
    const-string v3, "ril.MSIMM"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 912
    const/4 v0, 0x0

    .line 915
    :cond_0
    iget-object v3, p1, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    if-ltz v3, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->subId:I

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v3, v4, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    if-ltz v3, :cond_1

    iget v3, p1, Lcom/android/internal/telephony/Subscription;->slotId:I

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Subscription;->getAppIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/CardSubscriptionManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/SubscriptionData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionData;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 922
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getActiveSubscriptionsCount()I
    .locals 6

    .prologue
    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, "activeSubCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v3, :cond_1

    .line 1268
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v2, v3, v1

    .line 1269
    .local v2, "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_0

    .line 1270
    add-int/lit8 v0, v0, 0x1

    .line 1267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1273
    .end local v2    # "sub":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_1
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count of subs activated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return v0
.end method

.method public getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1061
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 270
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 272
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 273
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 274
    .local v1, "subId":Ljava/lang/Integer;
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE on SUB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v5, v2, v3

    .line 276
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->isAllRadioOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 278
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsRequired:Z

    goto :goto_0

    .line 283
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 284
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 285
    .restart local v1    # "subId":Ljava/lang/Integer;
    const-string v2, "SubscriptionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RADIO_ON on SUB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 290
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "subId":Ljava/lang/Integer;
    :pswitch_3
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_CARD_INFO_AVAILABLE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processCardInfoAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 295
    :pswitch_4
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_CARD_INFO_NOT_AVAILABLE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processCardInfoNotAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 300
    :pswitch_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagAllCardsInfo:Z

    if-nez v2, :cond_1

    .line 301
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_ALL_CARD_INFO_AVAILABLE, delay 100 ms"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 303
    iput-boolean v6, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagAllCardsInfo:Z

    goto/16 :goto_0

    .line 306
    :cond_1
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_ALL_CARD_INFO_AVAILABLE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mFlagAllCardsInfo:Z

    .line 308
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processAllCardsInfoAvailable()V

    goto/16 :goto_0

    .line 312
    :pswitch_6
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 317
    :pswitch_7
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_SUBSCRIPTION_STATUS_CHANGED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 322
    :pswitch_8
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isSetSubscriptionInProgress()Z
    .locals 1

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    .line 1074
    .local v0, "currentSelSub":Lcom/android/internal/telephony/Subscription;
    iget-object v1, v0, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1254
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    monitor-exit p0

    return-void

    .line 1253
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1234
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1235
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 1236
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1237
    monitor-exit v2

    .line 1238
    return-void

    .line 1237
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1214
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1215
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 1216
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1217
    monitor-exit v2

    .line 1218
    return-void

    .line 1217
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 4
    .param p1, "subscription"    # I
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    .line 1183
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSubscription() sub="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 1185
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    .line 1186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 1189
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1192
    .local v0, "msgSetDataSub":Landroid/os/Message;
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set DDS to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Calling cmd interface setDataSubscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v1, "0"

    const-string v2, "ril.MSIMM"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 1201
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mQueuedDds:I

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCurrentDds:I

    .line 1203
    return-void

    .line 1198
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 1199
    const-string v1, "SubscriptionManager"

    const-string v2, "RIL request is needed to SUB0 in case of SIM2 only"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPhones([Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "p"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionManager;->mProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 333
    return-void
.end method

.method public setSubscription(Lcom/android/internal/telephony/SubscriptionData;)Z
    .locals 8
    .param p1, "subData"    # Lcom/android/internal/telephony/SubscriptionData;

    .prologue
    .line 1119
    const/4 v3, 0x0

    .line 1125
    .local v3, "ret":Z
    iget-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v5, :cond_0

    .line 1126
    const/4 v5, 0x0

    .line 1174
    :goto_0
    return v5

    .line 1129
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v5, :cond_1

    .line 1130
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v6, "NO CHANGE IN SUBSCRIPTION"

    aput-object v6, v5, v1

    .line 1129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1134
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mNumPhones:I

    if-ge v1, v5, :cond_5

    .line 1135
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;

    move-result-object v5

    aget-object v4, v5, v1

    .line 1140
    .local v4, "subId":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/Subscription;->isSame(Lcom/android/internal/telephony/Subscription;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1141
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_4

    .line 1142
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to deactivate current SUB :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance v2, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/Subscription;-><init>()V

    .line 1144
    .local v2, "newSub":Lcom/android/internal/telephony/Subscription;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1145
    sget-object v5, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    iput-object v5, v2, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    .line 1146
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    .end local v2    # "newSub":Lcom/android/internal/telephony/Subscription;
    :cond_2
    :goto_3
    iget-object v5, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_3

    .line 1153
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to activate new SUB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v2, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v2}, Lcom/android/internal/telephony/Subscription;-><init>()V

    .line 1155
    .restart local v2    # "newSub":Lcom/android/internal/telephony/Subscription;
    iget-object v5, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/Subscription;->copyFrom(Lcom/android/internal/telephony/Subscription;)Lcom/android/internal/telephony/Subscription;

    .line 1156
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    .end local v2    # "newSub":Lcom/android/internal/telephony/Subscription;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1147
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_2

    iget-object v5, p1, Lcom/android/internal/telephony/SubscriptionData;->subscription:[Lcom/android/internal/telephony/Subscription;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/internal/telephony/Subscription;->subStatus:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_2

    goto :goto_3

    .line 1161
    .end local v4    # "subId":Lcom/android/internal/telephony/SubscriptionManager$SubscriptionId;
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v5, :cond_6

    .line 1162
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v0

    .line 1163
    .local v0, "deactivateInProgress":Z
    if-eqz v0, :cond_8

    .line 1164
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 1170
    .end local v0    # "deactivateInProgress":Z
    :cond_6
    :goto_4
    iget-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v5, :cond_7

    .line 1172
    const/4 v3, 0x1

    :cond_7
    move v5, v3

    .line 1174
    goto/16 :goto_0

    .line 1166
    .restart local v0    # "deactivateInProgress":Z
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionManager;->processActivateRequests()V

    goto :goto_4
.end method

.method public declared-synchronized unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1262
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    monitor-exit p0

    return-void

    .line 1262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterForSubscriptionActivated(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1243
    monitor-exit v1

    .line 1244
    return-void

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 1222
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1223
    monitor-exit v1

    .line 1224
    return-void

    .line 1223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
