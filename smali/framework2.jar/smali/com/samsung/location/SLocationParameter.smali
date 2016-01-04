.class public Lcom/samsung/location/SLocationParameter;
.super Ljava/lang/Object;
.source "SLocationParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/location/SLocationParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBssid:Ljava/lang/String;

.field public mLat:D

.field public mLon:D

.field public mRadius:I

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/samsung/location/SLocationParameter$1;

    invoke-direct {v0}, Lcom/samsung/location/SLocationParameter$1;-><init>()V

    sput-object v0, Lcom/samsung/location/SLocationParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IDDI)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "lat"    # D
    .param p4, "lon"    # D
    .param p6, "radius"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    .line 35
    iput-wide p2, p0, Lcom/samsung/location/SLocationParameter;->mLat:D

    .line 36
    iput-wide p4, p0, Lcom/samsung/location/SLocationParameter;->mLon:D

    .line 37
    iput p6, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    .line 43
    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLat:D

    .line 44
    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLon:D

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    .line 46
    iput-object p2, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLat:D

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLon:D

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/location/SLocationParameter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/location/SLocationParameter$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationParameter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/samsung/location/SLocationParameter;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 70
    iget-wide v0, p0, Lcom/samsung/location/SLocationParameter;->mLon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 71
    iget v0, p0, Lcom/samsung/location/SLocationParameter;->mRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/samsung/location/SLocationParameter;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
