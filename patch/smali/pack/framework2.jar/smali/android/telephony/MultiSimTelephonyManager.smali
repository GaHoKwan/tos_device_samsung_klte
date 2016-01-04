.class public Landroid/telephony/MultiSimTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "MultiSimTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSimTelephonyManager"

.field private static cnt:I

.field private static sInstance:[Landroid/telephony/MultiSimTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v1, 0x0

    sput v1, Landroid/telephony/MultiSimTelephonyManager;->cnt:I

    .line 47
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/MultiSimTelephonyManager;

    sput-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    .line 48
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_0
    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 49
    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    new-instance v2, Landroid/telephony/MultiSimTelephonyManager;

    invoke-direct {v2, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(I)V

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 55
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "simSlot"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 64
    iput p1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simSlot"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public static getDefault()Landroid/telephony/MultiSimTelephonyManager;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefault(I)Landroid/telephony/MultiSimTelephonyManager;
    .locals 2
    .param p0, "simSlot"    # I

    .prologue
    .line 100
    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MultiSimTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 179
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v1

    .line 172
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget v4, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v4}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 173
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 174
    goto :goto_0

    .line 176
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move-object v1, v3

    .line 177
    goto :goto_0

    .line 178
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    move-object v1, v3

    .line 179
    goto :goto_0
.end method

.method protected getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTypeFromProperty()I
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method protected getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 143
    return-void
.end method
