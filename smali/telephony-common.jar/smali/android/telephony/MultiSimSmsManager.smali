.class public Landroid/telephony/MultiSimSmsManager;
.super Ljava/lang/Object;
.source "MultiSimSmsManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultiSimSmsManager"

.field private static sInstance:[Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v1, 0x0

    sput-object v1, Landroid/telephony/MultiSimSmsManager;->sInstance:[Landroid/telephony/SmsManager;

    .line 66
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/SmsManager;

    sput-object v1, Landroid/telephony/MultiSimSmsManager;->sInstance:[Landroid/telephony/SmsManager;

    .line 67
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_0
    sget-object v1, Landroid/telephony/MultiSimSmsManager;->sInstance:[Landroid/telephony/SmsManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 68
    sget-object v1, Landroid/telephony/MultiSimSmsManager;->sInstance:[Landroid/telephony/SmsManager;

    new-instance v2, Landroid/telephony/SmsManager;

    invoke-direct {v2}, Landroid/telephony/SmsManager;-><init>()V

    aput-object v2, v1, v0

    .line 69
    sget-object v1, Landroid/telephony/MultiSimSmsManager;->sInstance:[Landroid/telephony/SmsManager;

    aget-object v1, v1, v0

    const-string v2, "isms"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->SetServiceName(Ljava/lang/String;)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Landroid/telephony/MultiSimSmsManager;->sInstance:[Landroid/telephony/SmsManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefault(I)Landroid/telephony/SmsManager;
    .locals 2
    .param p0, "simSlot"    # I

    .prologue
    .line 86
    sget-object v0, Landroid/telephony/MultiSimSmsManager;->sInstance:[Landroid/telephony/SmsManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
