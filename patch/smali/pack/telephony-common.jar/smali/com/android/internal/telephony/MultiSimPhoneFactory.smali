.class public Lcom/android/internal/telephony/MultiSimPhoneFactory;
.super Lcom/android/internal/telephony/PhoneFactory;
.source "MultiSimPhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MULTISIMPHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

.field private static mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

.field private static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 52
    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneNotifier;

    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneFactory;-><init>()V

    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "simSlot"    # I

    .prologue
    .line 270
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "simSlot"    # I

    .prologue
    .line 254
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "simSlot"    # I

    .prologue
    .line 293
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 244
    return-void
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private static setDefaultPhone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 248
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 249
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 250
    return-void
.end method
