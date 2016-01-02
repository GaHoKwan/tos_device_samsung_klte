.class public Landroid/hardware/scontext/SContextAirMotion;
.super Landroid/hardware/scontext/SContextProvider;
.source "SContextAirMotion.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextAirMotion;",
            ">;"
        }
    .end annotation
.end field

.field private static final GESTURE_SENSOR_AMS:I = 0x3

.field private static final GESTURE_SENSOR_MAXIM_VER_1:I = 0x1

.field private static final GESTURE_SENSOR_MAXIM_VER_2:I = 0x2

.field private static final GESTURE_SPEED_LEVEL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SContextAirMotion"


# instance fields
.field private final GESTURE_VALID_COUNT_RANGE_AMS:[I

.field private mContext:Landroid/os/Bundle;

.field private final mDirections:[Ljava/lang/String;

.field private mValues:[F

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Landroid/hardware/scontext/SContextAirMotion$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAirMotion$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAirMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 63
    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    .line 42
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->GESTURE_VALID_COUNT_RANGE_AMS:[I

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Right"

    aput-object v2, v0, v1

    const-string v1, "Left"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "Down"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Up"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mDirections:[Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 65
    return-void

    .line 42
    :array_0
    .array-data 4
        0x5
        0xc8
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x2

    .line 70
    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    .line 42
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->GESTURE_VALID_COUNT_RANGE_AMS:[I

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Right"

    aput-object v2, v0, v1

    const-string v1, "Left"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "Down"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Up"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mDirections:[Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAirMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 72
    return-void

    .line 42
    :array_0
    .array-data 4
        0x5
        0xc8
    .end array-data
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mVersion:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mValues:[F

    .line 196
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/hardware/scontext/SContextProvider;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAngle()I
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getDirection()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "direction":I
    iget v3, p0, Landroid/hardware/scontext/SContextAirMotion;->mVersion:I

    packed-switch v3, :pswitch_data_0

    .line 118
    :goto_0
    const-string v3, "SContextAirMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Direction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextAirMotion;->mDirections:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v1

    .line 84
    :pswitch_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextAirMotion;->mValues:[F

    aget v3, v3, v4

    float-to-int v3, v3

    int-to-char v0, v3

    .line 85
    .local v0, "char_direction":C
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 93
    :sswitch_0
    const/4 v1, 0x2

    .line 94
    goto :goto_0

    .line 87
    :sswitch_1
    const/4 v1, 0x3

    .line 88
    goto :goto_0

    .line 90
    :sswitch_2
    const/4 v1, 0x4

    .line 91
    goto :goto_0

    .line 96
    :sswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "char_direction":C
    :pswitch_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextAirMotion;->mValues:[F

    aget v3, v3, v4

    float-to-int v2, v3

    .line 102
    .local v2, "int_direction":I
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 113
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 104
    :pswitch_3
    const/4 v1, 0x3

    .line 105
    goto :goto_0

    .line 107
    :pswitch_4
    const/4 v1, 0x4

    .line 108
    goto :goto_0

    .line 110
    :pswitch_5
    const/4 v1, 0x2

    .line 111
    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x4c -> :sswitch_2
        0x52 -> :sswitch_1
        0x55 -> :sswitch_3
    .end sparse-switch

    .line 102
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSpeed()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "isSpeedSupported":Z
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 139
    .local v1, "range":[I
    const/4 v3, 0x0

    .line 140
    .local v3, "valid_cnt":I
    const/4 v2, -0x1

    .line 142
    .local v2, "speed":I
    iget v4, p0, Landroid/hardware/scontext/SContextAirMotion;->mVersion:I

    packed-switch v4, :pswitch_data_0

    .line 150
    :goto_0
    if-eqz v0, :cond_2

    .line 151
    aget v4, v1, v6

    if-le v3, v4, :cond_1

    .line 152
    aget v3, v1, v6

    .line 156
    :cond_0
    :goto_1
    aget v4, v1, v6

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x64

    aget v5, v1, v6

    aget v6, v1, v7

    sub-int/2addr v5, v6

    div-int v2, v4, v5

    .line 157
    const-string v4, "SContextAirMotion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Speed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_2
    return v2

    .line 144
    :pswitch_0
    const/4 v0, 0x1

    .line 145
    iget-object v1, p0, Landroid/hardware/scontext/SContextAirMotion;->GESTURE_VALID_COUNT_RANGE_AMS:[I

    .line 146
    iget-object v4, p0, Landroid/hardware/scontext/SContextAirMotion;->mValues:[F

    const/4 v5, 0x7

    aget v4, v4, v5

    float-to-int v3, v4

    goto :goto_0

    .line 153
    :cond_1
    aget v4, v1, v7

    if-ge v3, v4, :cond_0

    .line 154
    aget v3, v1, v7

    goto :goto_1

    .line 159
    :cond_2
    const-string v4, "SContextAirMotion"

    const-string v5, "The device doesn\'t support speed of gesture"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 171
    iput-object p1, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    .line 172
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mVersion:I

    .line 173
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Values"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mValues:[F

    .line 174
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 182
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 183
    iget v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 185
    return-void
.end method
