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

    .prologue
    .line 263
    new-instance v0, Lcom/samsung/android/glancecard/GlanceCardInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/glancecard/GlanceCardInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/glancecard/GlanceCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardViewType:I

    .line 32
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardGroupId:I

    .line 34
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    .line 36
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mVolatile:I

    .line 39
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mGroupPriority:I

    .line 41
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardPriority:I

    .line 44
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTitle:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle_2:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTextDescription:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mFileNameDescription:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_1:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_2:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_3:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_4:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mContentIntent:Landroid/content/Intent;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_1:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_1:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_1:Landroid/content/Intent;

    .line 73
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_1:I

    .line 76
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_2:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_2:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_2:Landroid/content/Intent;

    .line 82
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_2:I

    .line 85
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_3:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_3:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_3:Landroid/content/Intent;

    .line 91
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_3:I

    .line 94
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_4:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_4:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_4:Landroid/content/Intent;

    .line 100
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_4:I

    .line 103
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_5:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_5:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_5:Landroid/content/Intent;

    .line 109
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_5:I

    .line 112
    iput v2, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitch:I

    .line 114
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchIntent:Landroid/content/Intent;

    .line 116
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchVolatile:I

    .line 119
    iput v2, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheck:I

    .line 121
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckIntent:Landroid/content/Intent;

    .line 123
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckVolatile:I

    .line 126
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRemoteView:Landroid/widget/RemoteViews;

    .line 129
    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mBundle:Landroid/os/Bundle;

    .line 132
    iput v1, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRelayAction:I

    .line 136
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardViewType:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardGroupId:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mVolatile:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mGroupPriority:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardPriority:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTitle:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle_2:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTextDescription:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mFileNameDescription:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_1:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_2:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_3:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_4:Ljava/lang/String;

    .line 223
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mContentIntent:Landroid/content/Intent;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_1:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_1:Ljava/lang/String;

    .line 227
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_1:Landroid/content/Intent;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_1:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_2:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_2:Ljava/lang/String;

    .line 232
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_2:Landroid/content/Intent;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_2:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_3:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_3:Ljava/lang/String;

    .line 237
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_3:Landroid/content/Intent;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_3:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_4:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_4:Ljava/lang/String;

    .line 242
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_4:Landroid/content/Intent;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_4:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_5:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_5:Ljava/lang/String;

    .line 247
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_5:Landroid/content/Intent;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_5:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitch:I

    .line 251
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchIntent:Landroid/content/Intent;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchVolatile:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheck:I

    .line 255
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckIntent:Landroid/content/Intent;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckVolatile:I

    .line 258
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRemoteView:Landroid/widget/RemoteViews;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mBundle:Landroid/os/Bundle;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRelayAction:I

    .line 261
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardViewType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mVolatile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mGroupPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCardPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSubTitle_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mTextDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mFileNameDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mImageURI_4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mContentIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_1:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_2:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 174
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_3:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 179
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_4:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 184
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonURI_5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonString_5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonIntent_5:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 189
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mButtonVolatile_5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 193
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mSwitchVolatile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 197
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mCheckVolatile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 201
    iget v0, p0, Lcom/samsung/android/glancecard/GlanceCardInfo;->mRelayAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return-void
.end method
