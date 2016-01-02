.class public Lcom/samsung/android/glancecard/GlanceCardInfo;
.super Ljava/lang/Object;
.source "GlanceCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/glancecard/GlanceCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBundle:Landroid/os/Bundle;

.field public mButtonIntent_1:Landroid/content/Intent;

.field public mButtonIntent_2:Landroid/content/Intent;

.field public mButtonIntent_3:Landroid/content/Intent;

.field public mButtonIntent_4:Landroid/content/Intent;

.field public mButtonIntent_5:Landroid/content/Intent;

.field public mButtonString_1:Ljava/lang/String;

.field public mButtonString_2:Ljava/lang/String;

.field public mButtonString_3:Ljava/lang/String;

.field public mButtonString_4:Ljava/lang/String;

.field public mButtonString_5:Ljava/lang/String;

.field public mButtonURI_1:Ljava/lang/String;

.field public mButtonURI_2:Ljava/lang/String;

.field public mButtonURI_3:Ljava/lang/String;

.field public mButtonURI_4:Ljava/lang/String;

.field public mButtonURI_5:Ljava/lang/String;

.field public mButtonVolatile_1:I

.field public mButtonVolatile_2:I

.field public mButtonVolatile_3:I

.field public mButtonVolatile_4:I

.field public mButtonVolatile_5:I

.field public mCardGroupId:I

.field public mCardId:I

.field public mCardPriority:I

.field public mCardViewType:I

.field public mCheck:I

.field public mCheckIntent:Landroid/content/Intent;

.field public mCheckVolatile:I

.field public mContentIntent:Landroid/content/Intent;

.field public mFileNameDescription:Ljava/lang/String;

.field public mGroupPriority:I

.field public mImageURI_1:Ljava/lang/String;

.field public mImageURI_2:Ljava/lang/String;

.field public mImageURI_3:Ljava/lang/String;

.field public mImageURI_4:Ljava/lang/String;

.field public mRelayAction:I

.field public mRemoteView:Landroid/widget/RemoteViews;

.field public mSubTitle:Ljava/lang/String;

.field public mSubTitle_2:Ljava/lang/String;

.field public mSwitch:I

.field public mSwitchIntent:Landroid/content/Intent;

.field public mSwitchVolatile:I

.field public mTextDescription:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mVolatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/glancecard/GlanceCardInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/glancecard/GlanceCardInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardViewType:I

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardGroupId:I

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mVolatile:I

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mGroupPriority:I

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardPriority:I

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTextDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mFileNameDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_3:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_4:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mContentIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_1:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_1:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_1:I

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_2:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_2:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_2:I

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_3:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_3:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_3:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_3:I

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_4:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_4:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_4:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_4:I

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_5:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_5:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_5:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_5:I

    iput v2, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitch:I

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchVolatile:I

    iput v2, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheck:I

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckIntent:Landroid/content/Intent;

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckVolatile:I

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRemoteView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mBundle:Landroid/os/Bundle;

    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRelayAction:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardViewType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardGroupId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mVolatile:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mGroupPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle_2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTextDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mFileNameDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_3:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_4:Ljava/lang/String;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mContentIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_1:Ljava/lang/String;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_1:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_2:Ljava/lang/String;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_2:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_3:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_3:Ljava/lang/String;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_3:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_4:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_4:Ljava/lang/String;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_4:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_4:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_5:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_5:Ljava/lang/String;

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_5:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_5:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitch:I

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchVolatile:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheck:I

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckVolatile:I

    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRelayAction:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardViewType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mVolatile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mGroupPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTextDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mFileNameDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mContentIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_1:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_2:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_3:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_4:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_5:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchVolatile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckVolatile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRelayAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
