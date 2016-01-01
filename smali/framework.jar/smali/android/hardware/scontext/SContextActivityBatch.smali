.class public Landroid/hardware/scontext/SContextActivityBatch;
.super Landroid/hardware/scontext/SContextProvider;
.source "SContextActivityBatch.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextActivityBatch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Landroid/hardware/scontext/SContextActivityBatch$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityBatch$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextActivityBatch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    .line 38
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextActivityBatch;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    .line 104
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
    .line 75
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStatus()[I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v1, "ActivityType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()[J
    .locals 8

    .prologue
    .line 47
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v5, "Count"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 48
    .local v2, "size":I
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v5, "Duration"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 49
    .local v0, "duration":[J
    new-array v3, v2, [J

    .line 50
    .local v3, "timestamp":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 51
    if-nez v1, :cond_0

    .line 52
    iget-object v4, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    const-string v5, "TimeStamp"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 50
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v0, v6

    add-long/2addr v4, v6

    aput-wide v4, v3, v1

    goto :goto_1

    .line 57
    :cond_1
    return-object v3
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 85
    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 94
    iget-object v0, p0, Landroid/hardware/scontext/SContextActivityBatch;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method
