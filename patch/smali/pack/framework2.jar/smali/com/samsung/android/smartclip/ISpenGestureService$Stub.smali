.class public abstract Lcom/samsung/android/smartclip/ISpenGestureService$Stub;
.super Landroid/os/Binder;
.source "ISpenGestureService.java"

# interfaces
.implements Lcom/samsung/android/smartclip/ISpenGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartclip/ISpenGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartclip/ISpenGestureService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.smartclip.ISpenGestureService"

.field static final TRANSACTION_activateExclusiveCroppingMode:I = 0x3

.field static final TRANSACTION_getAirButtonHitTest:I = 0x7

.field static final TRANSACTION_getSmartClipDataByScreenRect:I = 0x6

.field static final TRANSACTION_getSmartClipDataFromCurrentScreen:I = 0x5

.field static final TRANSACTION_isExclusiveModeActivated:I = 0x4

.field static final TRANSACTION_setAirButtonHitTestResult:I = 0x8

.field static final TRANSACTION_setDisableGlobalAirBottonAppindex:I = 0x9

.field static final TRANSACTION_setFocusWindow:I = 0x1

.field static final TRANSACTION_setSmartClipDataExtractionResult:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;
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
    const-string v1, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/smartclip/ISpenGestureService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/smartclip/ISpenGestureService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/smartclip/ISpenGestureService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->setFocusWindow(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    sget-object v4, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .line 64
    .local v0, "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    goto :goto_1

    .line 70
    .end local v0    # "_arg0":Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;
    :sswitch_3
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->activateExclusiveCroppingMode()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_4
    const-string v6, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->isExclusiveModeActivated()Z

    move-result v3

    .line 79
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v6, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v3

    .line 87
    .local v3, "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v3, p3, v5}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :sswitch_6
    const-string v6, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 108
    .local v0, "_arg0":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 110
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v3

    .line 112
    .restart local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v3, :cond_4

    .line 114
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v3, p3, v5}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Rect;
    goto :goto_2

    .line 118
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    .restart local v2    # "_arg2":I
    .restart local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :sswitch_7
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->getAirButtonHitTest(III)I

    move-result v3

    .line 132
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :sswitch_8
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->setAirButtonHitTestResult(II)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_9
    const-string v4, "com.samsung.android.smartclip.ISpenGestureService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->setDisableGlobalAirBottonAppindex(I)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
