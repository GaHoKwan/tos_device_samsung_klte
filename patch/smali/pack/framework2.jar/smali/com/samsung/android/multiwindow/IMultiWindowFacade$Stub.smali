.class public abstract Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowFacade.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiWindowFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IMultiWindowFacade"

.field static final TRANSACTION_changeFocusedTaskToFull:I = 0x13

.field static final TRANSACTION_exchangeTopTaskToZone:I = 0xa

.field static final TRANSACTION_getArrangeState:I = 0xb

.field static final TRANSACTION_getAvailableMultiInstanceCnt:I = 0x14

.field static final TRANSACTION_getCenterBarPoint:I = 0x3

.field static final TRANSACTION_getFocusedStackLayer:I = 0xc

.field static final TRANSACTION_getFocusedZone:I = 0xd

.field static final TRANSACTION_getFrontActivityMultiWindowStyle:I = 0x9

.field static final TRANSACTION_getGlobalSystemUiVisibility:I = 0x12

.field static final TRANSACTION_getMultiWindowStyle:I = 0x5

.field static final TRANSACTION_getSplitMaxWeight:I = 0x19

.field static final TRANSACTION_getSplitMinWeight:I = 0x18

.field static final TRANSACTION_getStackBound:I = 0x7

.field static final TRANSACTION_getStackBoxPosition:I = 0x1b

.field static final TRANSACTION_getStackOriginalBound:I = 0x8

.field static final TRANSACTION_getZoneBounds:I = 0xe

.field static final TRANSACTION_isEnableMakePenWindow:I = 0x1a

.field static final TRANSACTION_minimizeWindow:I = 0x1

.field static final TRANSACTION_moveOnlySpecificTaskToFront:I = 0x17

.field static final TRANSACTION_requestSplitPreview:I = 0x10

.field static final TRANSACTION_setCenterBarPoint:I = 0x2

.field static final TRANSACTION_setFocusAppByZone:I = 0x15

.field static final TRANSACTION_setMultiWindowStyle:I = 0x4

.field static final TRANSACTION_setMultiWindowTrayOpenState:I = 0xf

.field static final TRANSACTION_setPreviewFullAppZone:I = 0x11

.field static final TRANSACTION_setStackBound:I = 0x6

.field static final TRANSACTION_updateIsolatedCenterPoint:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFacade;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->minimizeWindow(Landroid/os/IBinder;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 68
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setCenterBarPoint(Landroid/graphics/Point;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_1

    .line 74
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :sswitch_3
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 76
    .local v2, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v2    # "_result":Landroid/graphics/Point;
    :sswitch_4
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 98
    .local v1, "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 96
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    goto :goto_2

    .line 104
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_5
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 108
    .local v2, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v2, :cond_3

    .line 110
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v2, p3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 114
    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_6
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 124
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 130
    .local v1, "_arg1":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/graphics/Rect;
    goto :goto_3

    .line 136
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :sswitch_7
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    .line 140
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v2, :cond_5

    .line 142
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 146
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/graphics/Rect;
    :sswitch_8
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v2

    .line 156
    .restart local v2    # "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v2, :cond_6

    .line 158
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 162
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Landroid/graphics/Rect;
    :sswitch_9
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 172
    .local v2, "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v2, :cond_7

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v2, p3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 178
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_a
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->exchangeTopTaskToZone(II)Z

    move-result v2

    .line 190
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v2, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getArrangeState()I

    move-result v2

    .line 198
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 204
    .end local v2    # "_result":I
    :sswitch_c
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFocusedStackLayer()I

    move-result v2

    .line 206
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 212
    .end local v2    # "_result":I
    :sswitch_d
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getFocusedZone()I

    move-result v2

    .line 214
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 220
    .end local v2    # "_result":I
    :sswitch_e
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getZoneBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 224
    .local v2, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v2, :cond_9

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 230
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/graphics/Rect;
    :sswitch_f
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v0, v4

    .line 239
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setMultiWindowTrayOpenState(Z)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_a
    move v0, v3

    .line 238
    goto :goto_4

    .line 245
    :sswitch_10
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    move v0, v4

    .line 248
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->requestSplitPreview(Z)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_b
    move v0, v3

    .line 247
    goto :goto_5

    .line 254
    :sswitch_11
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setPreviewFullAppZone(I)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 263
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getGlobalSystemUiVisibility()I

    move-result v2

    .line 265
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v2    # "_result":I
    :sswitch_13
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->changeFocusedTaskToFull()V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 278
    :sswitch_14
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getAvailableMultiInstanceCnt()I

    move-result v2

    .line 280
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 286
    .end local v2    # "_result":I
    :sswitch_15
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->setFocusAppByZone(I)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":I
    :sswitch_16
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 298
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 303
    .local v0, "_arg0":Landroid/graphics/Point;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 301
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Point;
    goto :goto_6

    .line 309
    .end local v0    # "_arg0":Landroid/graphics/Point;
    :sswitch_17
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 314
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->moveOnlySpecificTaskToFront(II)V

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 320
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_18
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getSplitMinWeight()F

    move-result v2

    .line 322
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 328
    .end local v2    # "_result":F
    :sswitch_19
    const-string v3, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getSplitMaxWeight()F

    move-result v2

    .line 330
    .restart local v2    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 336
    .end local v2    # "_result":F
    :sswitch_1a
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->isEnableMakePenWindow()Z

    move-result v2

    .line 338
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v2, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 344
    .end local v2    # "_result":Z
    :sswitch_1b
    const-string v5, "com.samsung.android.multiwindow.IMultiWindowFacade"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 347
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowFacade$Stub;->getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v2

    .line 348
    .local v2, "_result":Landroid/graphics/Point;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v2, :cond_e

    .line 350
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    invoke-virtual {v2, p3, v4}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 354
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
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
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
