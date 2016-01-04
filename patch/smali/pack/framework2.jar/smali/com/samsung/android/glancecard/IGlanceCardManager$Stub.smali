.class public abstract Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;
.super Landroid/os/Binder;
.source "IGlanceCardManager.java"

# interfaces
.implements Lcom/samsung/android/glancecard/IGlanceCardManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glancecard/IGlanceCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glancecard/IGlanceCardManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.glancecard.IGlanceCardManager"

.field static final TRANSACTION_addAllCard:I = 0x1

.field static final TRANSACTION_addCard:I = 0x2

.field static final TRANSACTION_close:I = 0xe

.field static final TRANSACTION_getAllCardIds:I = 0xb

.field static final TRANSACTION_getListenerAsBinder:I = 0xa

.field static final TRANSACTION_hide:I = 0xd

.field static final TRANSACTION_removeAllCard:I = 0x5

.field static final TRANSACTION_removeCard:I = 0x6

.field static final TRANSACTION_removeCardFromTray:I = 0x7

.field static final TRANSACTION_removeGroup:I = 0x8

.field static final TRANSACTION_setListenerAsBinder:I = 0x9

.field static final TRANSACTION_show:I = 0xc

.field static final TRANSACTION_updateCard:I = 0x4

.field static final TRANSACTION_updateCards:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/glancecard/IGlanceCardManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/glancecard/IGlanceCardManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/glancecard/IGlanceCardManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 56
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_1
    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 57
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/glancecard/GlanceCardInfo;>;"
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->addAllCard(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/glancecard/GlanceCardInfo;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 63
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 72
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glancecard/GlanceCardInfo;

    .line 78
    .local v1, "_arg1":Lcom/samsung/android/glancecard/GlanceCardInfo;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->addCard(Landroid/content/ComponentName;Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Lcom/samsung/android/glancecard/GlanceCardInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 76
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/glancecard/GlanceCardInfo;
    goto :goto_3

    .line 84
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Lcom/samsung/android/glancecard/GlanceCardInfo;
    :sswitch_3
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 93
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_4
    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 94
    .restart local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/glancecard/GlanceCardInfo;>;"
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->updateCards(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/glancecard/GlanceCardInfo;>;"
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 100
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 103
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 109
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 110
    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glancecard/GlanceCardInfo;

    .line 115
    .restart local v1    # "_arg1":Lcom/samsung/android/glancecard/GlanceCardInfo;
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->updateCard(Landroid/content/ComponentName;Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 106
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Lcom/samsung/android/glancecard/GlanceCardInfo;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 113
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/glancecard/GlanceCardInfo;
    goto :goto_6

    .line 121
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Lcom/samsung/android/glancecard/GlanceCardInfo;
    :sswitch_5
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 124
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 129
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->removeAllCard(Landroid/content/ComponentName;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    .line 135
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 138
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 144
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->removeCard(Landroid/content/ComponentName;I)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 151
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 154
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 160
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->removeCardFromTray(Landroid/content/ComponentName;I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 167
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 170
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 176
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->removeGroup(Landroid/content/ComponentName;I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 183
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 186
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 192
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 193
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->setListenerAsBinder(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 199
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 202
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 207
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {p0, v0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->getListenerAsBinder(Landroid/content/ComponentName;)Landroid/os/IBinder;

    move-result-object v3

    .line 208
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 205
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/os/IBinder;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 214
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 217
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 222
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {p0, v0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->getAllCardIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 223
    .local v3, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 220
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 229
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 232
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 237
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p0, v0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->show(Landroid/content/ComponentName;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 235
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 243
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 246
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 251
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p0, v0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->hide(Landroid/content/ComponentName;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 257
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e
    const-string v5, "com.samsung.android.glancecard.IGlanceCardManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    .line 260
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 265
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_10
    invoke-virtual {p0, v0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->close(Landroid/content/ComponentName;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 263
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
