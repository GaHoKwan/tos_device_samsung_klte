.class final Lcom/samsung/android/glancecard/GlanceCardInfo$1;
.super Ljava/lang/Object;
.source "GlanceCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glancecard/GlanceCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/glancecard/GlanceCardInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/glancecard/GlanceCardInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 266
    new-instance v0, Lcom/samsung/android/glancecard/GlanceCardInfo;

    invoke-direct {v0}, Lcom/samsung/android/glancecard/GlanceCardInfo;-><init>()V

    .line 267
    .local v0, "data":Lcom/samsung/android/glancecard/GlanceCardInfo;
    invoke-virtual {v0, p1}, Lcom/samsung/android/glancecard/GlanceCardInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 269
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/samsung/android/glancecard/GlanceCardInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/glancecard/GlanceCardInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/glancecard/GlanceCardInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 273
    new-array v0, p1, [Lcom/samsung/android/glancecard/GlanceCardInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/samsung/android/glancecard/GlanceCardInfo$1;->newArray(I)[Lcom/samsung/android/glancecard/GlanceCardInfo;

    move-result-object v0

    return-object v0
.end method
