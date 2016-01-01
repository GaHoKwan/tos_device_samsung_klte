.class public Landroid/hardware/scontext/SContextActivityLocationLogging;
.super Landroid/hardware/scontext/SContextProvider;
.source "SContextActivityLocationLogging.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextActivityLocationLogging;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mInfo:Landroid/os/Bundle;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLogging$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLogging$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActivityLocationLogging;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActivityLocationLogging;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    .line 212
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/hardware/scontext/SContextProvider;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAccuracy()[I
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "MovingAccuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getActivity()[I
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "MovingActivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAltitude()[D
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "altitude":[D
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 137
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 139
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryAltitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getLatitude()[D
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "latitude":[D
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 107
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 109
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryLatitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getLoggingSize()I
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "size":I
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 65
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 67
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "MovingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 68
    :cond_2
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLongitude()[D
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "longitude":[D
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 122
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "StayingAreaLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 124
    iget-object v1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v2, "TrajectoryLongitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_0
.end method

.method public getStayingAreaRadius()[I
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaRadius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStayingTimeDuration()[I
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v1, "StayingAreaTimeDuration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()[J
    .locals 7

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "timestamp":[J
    iget v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 82
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "StayingAreaTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 96
    :cond_0
    :goto_0
    return-object v2

    .line 83
    :cond_1
    iget v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 84
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "MovingTimeDuration"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 85
    .local v0, "duration":[I
    array-length v3, v0

    new-array v2, v3, [J

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 87
    if-nez v1, :cond_2

    .line 88
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "MovingTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 86
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_2
    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    add-int/lit8 v5, v1, -0x1

    aget v5, v0, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    goto :goto_2

    .line 93
    .end local v0    # "duration":[I
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 94
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    const-string v4, "TrajectoryTimeStamp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 187
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    .line 188
    const-string v0, "LoggingBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    .line 189
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    const-string v1, "LoggingType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    .line 190
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 198
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 199
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 200
    iget v0, p0, Landroid/hardware/scontext/SContextActivityLocationLogging;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return-void
.end method
