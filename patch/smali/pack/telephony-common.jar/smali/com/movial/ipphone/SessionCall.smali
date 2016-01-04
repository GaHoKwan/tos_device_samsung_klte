.class public Lcom/movial/ipphone/SessionCall;
.super Lcom/android/internal/telephony/DriverCall;
.source "SessionCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/SessionCall$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/movial/ipphone/SessionCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_CALL_ANSWERED:I = 0x2

.field public static final MSG_CALL_RINGBACK:I = 0x6

.field public static final MSG_CALL_RINGING:I = 0x1

.field public static final MSG_INCOMING_CALL:I = 0x3

.field public static final MSG_UPDATE_CNAM:I = 0x5

.field public static final MSG_UPDATE_CONNECTION:I = 0x4


# instance fields
.field public cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field public inConf:Z

.field public state:Lcom/movial/ipphone/SessionCall$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/movial/ipphone/SessionCall$1;

    invoke-direct {v0}, Lcom/movial/ipphone/SessionCall$1;-><init>()V

    sput-object v0, Lcom/movial/ipphone/SessionCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/movial/ipphone/SessionCall;->readFromParcel(Landroid/os/Parcel;)V

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/movial/ipphone/SessionCall$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/movial/ipphone/SessionCall$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/movial/ipphone/SessionCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/movial/ipphone/SessionCall;->inConf:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/SessionCall$State;

    iput-object v0, p0, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/movial/ipphone/SessionCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    :cond_1
    move v1, v2

    .line 114
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget-boolean v0, p0, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 108
    iget-object v0, p0, Lcom/movial/ipphone/SessionCall;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 109
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method
