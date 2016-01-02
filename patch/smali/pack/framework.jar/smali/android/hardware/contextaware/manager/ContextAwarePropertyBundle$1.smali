.class final Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;
.super Ljava/lang/Object;
.source "ContextAwarePropertyBundle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
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
        "Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 719
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 724
    new-array v0, p1, [Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;->newArray(I)[Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    move-result-object v0

    return-object v0
.end method
