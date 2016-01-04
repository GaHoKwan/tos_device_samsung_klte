.class public Lcom/samsung/android/magazinecard/MagazineCardInfo;
.super Ljava/lang/Object;
.source "MagazineCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    }
.end annotation


# static fields
.field public static CATEGORY_EMAIL:I

.field public static CATEGORY_FAVORITE_APP:I

.field public static CATEGORY_HERE_N_NOW:I

.field public static CATEGORY_MISSED_CALL:I

.field public static CATEGORY_MUSIC_PLAYER:I

.field public static CATEGORY_NEWS:I

.field public static CATEGORY_NEW_MESSAGE:I

.field public static CATEGORY_NONE:I

.field public static CATEGORY_ROAMING:I

.field public static CATEGORY_SOCIAL:I

.field public static CATEGORY_TODAYS_SCHEDULE:I

.field public static CATEGORY_WEATHER:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/magazinecard/MagazineCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

.field public static SECURITY_LEVEL_NORMAL:I

.field public static SECURITY_LEVEL_SECURE_MODE_ONLY:I


# instance fields
.field public mCardId:I

.field public mCategory:I

.field public mContentView:Landroid/widget/RemoteViews;

.field public mExpandedContentView:Landroid/widget/RemoteViews;

.field public mLaunchIntent:Landroid/app/PendingIntent;

.field public mSecurityLevel:I

.field public mTimeStamp:J

.field public mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 29
    sput v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_SECURE_MODE_ONLY:I

    .line 30
    sput v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

    .line 31
    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_SECURE_MODE_ONLY:I

    sget v1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NON_SECURE_MODE_ONLY:I

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NORMAL:I

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NONE:I

    .line 35
    sput v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_WEATHER:I

    .line 36
    sput v3, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_TODAYS_SCHEDULE:I

    .line 37
    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MUSIC_PLAYER:I

    .line 38
    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_EMAIL:I

    .line 39
    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEW_MESSAGE:I

    .line 40
    const/16 v0, 0x20

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_MISSED_CALL:I

    .line 41
    const/16 v0, 0x40

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NEWS:I

    .line 42
    const/16 v0, 0x80

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_SOCIAL:I

    .line 43
    const/16 v0, 0x100

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_HERE_N_NOW:I

    .line 44
    const/16 v0, 0x200

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_FAVORITE_APP:I

    .line 45
    const/16 v0, 0x400

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_ROAMING:I

    .line 160
    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/magazinecard/MagazineCardInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v3, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    .line 50
    iput v3, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    .line 51
    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    .line 52
    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NONE:I

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    .line 53
    iput-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 54
    iput-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    .line 55
    iput-object v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 114
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CAT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "dumpResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expandable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " haveLauncher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_1
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    .line 147
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 148
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    .line 153
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 154
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 135
    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-wide v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    return-void
.end method
