.class public Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
.super Landroid/hardware/scontext/SContextProvider;
.source "SContextCurrentStatusForPositioning.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextCurrentStatusForPositioning;",
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
    .line 61
    new-instance v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    .line 39
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    .line 58
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

.method public getStatus()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;->mContext:Landroid/os/Bundle;

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/hardware/scontext/SContextProvider;->setValues(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/hardware/scontext/SContextProvider;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
