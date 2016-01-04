.class public Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
.super Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
.source "SmartClipMetaTagArrayImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SmartClipMetaTagArrayImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;-><init>()V

    return-void
.end method


# virtual methods
.method public addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V
    .locals 0
    .param p1, "tag"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;)V
    .locals 3
    .param p1, "tagArray"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 86
    :cond_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 84
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 10

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 105
    .local v3, "tagCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 106
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 108
    .local v2, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "value":Ljava/lang/String;
    const-string v0, ""

    .line 112
    .local v0, "extra":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 113
    new-instance v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/String;
    const-string/jumbo v7, "null"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v6    # "value":Ljava/lang/String;
    :cond_0
    instance-of v7, v2, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v7, :cond_1

    move-object v4, v2

    .line 117
    check-cast v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .line 119
    .local v4, "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v7

    if-eqz v7, :cond_1

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", Extra data size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .end local v4    # "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    :cond_1
    const-string v7, "SmartClipMetaTagArrayImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "extra":Ljava/lang/String;
    .end local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getCopy()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .locals 4

    .prologue
    .line 90
    new-instance v1, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 91
    .local v1, "copy":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    .local v0, "arrayLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 94
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 95
    .local v3, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v3    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_0
    return-object v1
.end method

.method public getTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .locals 6
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 50
    .local v2, "resultArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 52
    .local v0, "arrayLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 53
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 54
    .local v3, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 55
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_1
    return-object v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 181
    .local v5, "tagCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "objId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 187
    .local v4, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    const-string v8, "SmartClipMetaTagImpl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "byteLen":I
    const/4 v0, 0x0

    .line 191
    .local v0, "byteBuff":[B
    if-lez v1, :cond_0

    .line 192
    new-array v0, v1, [B

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 196
    :cond_0
    new-instance v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .end local v4    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-direct {v4, v6, v7, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 201
    .end local v0    # "byteBuff":[B
    .end local v1    # "byteLen":I
    .restart local v4    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :goto_1
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .end local v4    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-direct {v4, v6, v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v4    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    goto :goto_1

    .line 203
    .end local v3    # "objId":Ljava/lang/String;
    .end local v4    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 5
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 38
    .local v0, "arrayLen":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 40
    .local v2, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 41
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 44
    .end local v2    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 140
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 144
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 146
    .local v3, "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    instance-of v5, v3, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v5, :cond_1

    move-object v4, v3

    .line 147
    check-cast v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .line 150
    .local v4, "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    const-string v5, "SmartClipMetaTagImpl"

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v1

    .line 157
    .local v1, "extraData":[B
    if-eqz v1, :cond_0

    .line 158
    array-length v5, v1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    .end local v1    # "extraData":[B
    .end local v4    # "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .restart local v1    # "extraData":[B
    .restart local v4    # "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 166
    .end local v1    # "extraData":[B
    .end local v4    # "tagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    :cond_1
    const-string v5, "SlookSmartClipMetaTag"

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    .end local v3    # "tag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_2
    return-void
.end method
