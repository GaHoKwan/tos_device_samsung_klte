.class public Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"


# instance fields
.field private mActivitySecureContainer:Z

.field private final mAllowMassStorage:Z

.field private final mDescriptionId:I

.field private final mEmulated:Z

.field private final mMaxFileSize:J

.field private final mMtpReserveSpace:I

.field private final mOwner:Landroid/os/UserHandle;

.field private final mPath:Ljava/io/File;

.field private final mPrimary:Z

.field private final mRemovable:Z

.field private mState:Ljava/lang/String;

.field private mStorageId:I

.field private mSubSystem:Ljava/lang/String;

.field private mUserLabel:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 93
    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0

    :cond_1
    move v0, v2

    .line 82
    goto :goto_1

    :cond_2
    move v0, v2

    .line 83
    goto :goto_2

    :cond_3
    move v0, v2

    .line 85
    goto :goto_3

    :cond_4
    move v1, v2

    .line 92
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/storage/StorageVolume$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/storage/StorageVolume$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/os/storage/StorageVolume;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V
    .locals 1
    .param p1, "path"    # Ljava/io/File;
    .param p2, "descriptionId"    # I
    .param p3, "primary"    # Z
    .param p4, "removable"    # Z
    .param p5, "emulated"    # Z
    .param p6, "mtpReserveSpace"    # I
    .param p7, "allowMassStorage"    # Z
    .param p8, "maxFileSize"    # J
    .param p10, "owner"    # Landroid/os/UserHandle;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 65
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 66
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 67
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 68
    iput-boolean p5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 69
    iput p6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 70
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 71
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 72
    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 73
    const-string/jumbo v0, "undefined"

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;
    .param p2, "descriptionId"    # I
    .param p3, "primary"    # Z
    .param p4, "removable"    # Z
    .param p5, "emulated"    # Z
    .param p6, "mtpReserveSpace"    # I
    .param p7, "allowMassStorage"    # Z
    .param p8, "maxFileSize"    # J
    .param p10, "owner"    # Landroid/os/UserHandle;
    .param p11, "subSystem"    # Ljava/lang/String;
    .param p12, "activitySecureContainer"    # Z

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    .line 333
    iput p2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    .line 334
    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    .line 335
    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    .line 336
    iput-boolean p5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    .line 337
    iput p6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    .line 338
    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    .line 339
    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    .line 340
    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    .line 341
    iput-object p11, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 342
    iput-boolean p12, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 343
    return-void
.end method

.method public static fromTemplate(Landroid/os/storage/StorageVolume;Ljava/io/File;Landroid/os/UserHandle;)Landroid/os/storage/StorageVolume;
    .locals 13
    .param p0, "template"    # Landroid/os/storage/StorageVolume;
    .param p1, "path"    # Ljava/io/File;
    .param p2, "owner"    # Landroid/os/UserHandle;

    .prologue
    .line 96
    new-instance v0, Landroid/os/storage/StorageVolume;

    iget v2, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    iget-boolean v3, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    iget-boolean v4, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    iget-boolean v5, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    iget v6, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    iget-boolean v7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    iget-wide v8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    iget-object v11, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    iget-boolean v12, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    move-object v1, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public allowMassStorage()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 268
    const-string v0, "StorageVolume:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 270
    const-string/jumbo v0, "mStorageId"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    const-string/jumbo v0, "mPath"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const-string v0, "mDescriptionId"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    const-string/jumbo v0, "mPrimary"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    const-string/jumbo v0, "mRemovable"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    const-string v0, "mEmulated"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    const-string v0, "mMtpReserveSpace"

    iget v1, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string v0, "mAllowMassStorage"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string v0, "mMaxFileSize"

    iget-wide v1, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string/jumbo v0, "mOwner"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    const-string/jumbo v0, "mUuid"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    const-string/jumbo v0, "mUserLabel"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    const-string/jumbo v0, "mState"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const-string/jumbo v0, "mSubSystem"

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    const-string v0, "mActivitySecureContainer"

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 286
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 248
    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 249
    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 250
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 252
    .end local v0    # "volume":Landroid/os/storage/StorageVolume;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActivitySecureContainer()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    return v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    return v0
.end method

.method public getFatVolumeId()I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 220
    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 224
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    return v0
.end method

.method public getOwner()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public getSubSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public setActivitySecureContainer(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    .line 365
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setStorageId(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 166
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    .line 167
    return-void
.end method

.method public setSubSystem(Ljava/lang/String;)V
    .locals 0
    .param p1, "predefinedSubSystem"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setUserLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "userLabel"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 263
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 264
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget v0, p0, Landroid/os/storage/StorageVolume;->mDescriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mPrimary:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-wide v3, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 317
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mOwner:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 318
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mUserLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mSubSystem:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mActivitySecureContainer:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    return-void

    :cond_0
    move v0, v2

    .line 311
    goto :goto_0

    :cond_1
    move v0, v2

    .line 312
    goto :goto_1

    :cond_2
    move v0, v2

    .line 313
    goto :goto_2

    :cond_3
    move v0, v2

    .line 315
    goto :goto_3

    :cond_4
    move v1, v2

    .line 322
    goto :goto_4
.end method
