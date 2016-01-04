.class public Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
.super Ljava/lang/Object;
.source "SmartClipDataExtractionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRACTION_MODE_DRAG_AND_DROP:I = 0x2

.field public static final EXTRACTION_MODE_FULL_SCREEN:I = 0x1

.field public static final EXTRACTION_MODE_NORMAL:I


# instance fields
.field public mCropRect:Landroid/graphics/Rect;

.field public mExtractionMode:I

.field public mRequestId:I

.field public mTargetWindowLayer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    .line 32
    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    .line 37
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    .line 32
    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    .line 40
    iput p1, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    .line 41
    iput-object p2, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    .line 42
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;I)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "cropRect"    # Landroid/graphics/Rect;
    .param p3, "extractionMode"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;)V

    .line 46
    iput p3, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    .line 67
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    return-void
.end method
