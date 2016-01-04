.class public Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
.super Ljava/lang/Object;
.source "SmartClipDataExtractionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mExtractionMode:I

.field public mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field public mRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "extractionMode"    # I
    .param p3, "repository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    .line 30
    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mExtractionMode:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 34
    iput p1, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    .line 35
    iput p2, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mExtractionMode:I

    .line 36
    iput-object p3, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mExtractionMode:I

    .line 55
    const-class v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mExtractionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    return-void
.end method
