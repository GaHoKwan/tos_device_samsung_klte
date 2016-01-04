.class final Llidroid/content/res/ExtraConfiguration$1;
.super Ljava/lang/Object;
.source "ExtraConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llidroid/content/res/ExtraConfiguration;
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
        "Llidroid/content/res/ExtraConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Llidroid/content/res/ExtraConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Llidroid/content/res/ExtraConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llidroid/content/res/ExtraConfiguration;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 160
    new-instance v0, Llidroid/content/res/ExtraConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Llidroid/content/res/ExtraConfiguration;-><init>(Landroid/os/Parcel;Llidroid/content/res/ExtraConfiguration$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Llidroid/content/res/ExtraConfiguration$1;->newArray(I)[Llidroid/content/res/ExtraConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Llidroid/content/res/ExtraConfiguration;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 164
    new-array v0, p1, [Llidroid/content/res/ExtraConfiguration;

    return-object v0
.end method
