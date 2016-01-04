.class public abstract Lcom/movial/ipphone/IIPService$Stub;
.super Landroid/os/Binder;
.source "IIPService.java"

# interfaces
.implements Lcom/movial/ipphone/IIPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IIPService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.movial.ipphone.IIPService"

.field static final TRANSACTION_accept:I = 0xb

.field static final TRANSACTION_acknowledgeLastIncomingIpSms:I = 0x1a

.field static final TRANSACTION_clearDisconnected:I = 0x1f

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_dial:I = 0x7

.field static final TRANSACTION_dialEmergencyCall:I = 0x8

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_doSubscribe:I = 0x3

.field static final TRANSACTION_getContactUri:I = 0x20

.field static final TRANSACTION_hangup:I = 0x9

.field static final TRANSACTION_hangupForegroundResumeBackground:I = 0xa

.field static final TRANSACTION_hold:I = 0xd

.field static final TRANSACTION_isCssEnable:I = 0x21

.field static final TRANSACTION_queryLastRegisterFailureCode:I = 0x6

.field static final TRANSACTION_queryLastRegisterFailureReasonData:I = 0x5

.field static final TRANSACTION_registerForCallStates:I = 0x16

.field static final TRANSACTION_registerForConnectionState:I = 0x14

.field static final TRANSACTION_registerForEmergencyCallPref:I = 0x17

.field static final TRANSACTION_registerForIncomingSMS:I = 0x18

.field static final TRANSACTION_registerForIncomingUSSD:I = 0x12

.field static final TRANSACTION_registerForSubscription:I = 0x15

.field static final TRANSACTION_reject:I = 0xc

.field static final TRANSACTION_sendDtmf:I = 0x1b

.field static final TRANSACTION_sendSMS:I = 0x19

.field static final TRANSACTION_sendUssd:I = 0x13

.field static final TRANSACTION_setCW:I = 0x11

.field static final TRANSACTION_setCallForward:I = 0x10

.field static final TRANSACTION_setCellLocation:I = 0x1e

.field static final TRANSACTION_setMute:I = 0xf

.field static final TRANSACTION_startDtmf:I = 0x1c

.field static final TRANSACTION_stopDtmf:I = 0x1d

.field static final TRANSACTION_test:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/movial/ipphone/IIPService;
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
    const-string v1, "com.movial.ipphone.IIPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/movial/ipphone/IIPService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/movial/ipphone/IIPService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/movial/ipphone/IIPService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/movial/ipphone/IIPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 416
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->test()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->connect(Ljava/lang/String;I)Z

    move-result v6

    .line 60
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_3
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->doSubscribe()Z

    move-result v6

    .line 68
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v6, :cond_1

    move v0, v7

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v6    # "_result":Z
    :sswitch_4
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->disconnect(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->queryLastRegisterFailureReasonData()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->queryLastRegisterFailureCode()I

    move-result v6

    .line 93
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v6    # "_result":I
    :sswitch_7
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->dial(Ljava/lang/String;I)I

    move-result v6

    .line 105
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 111
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":I
    :sswitch_8
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->dialEmergencyCall(Ljava/lang/String;)I

    move-result v6

    .line 115
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_9
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->hangup(I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v1    # "_arg0":I
    :sswitch_a
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->hangupForegroundResumeBackground()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 137
    :sswitch_b
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->accept()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    :sswitch_c
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->reject(I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    .end local v1    # "_arg0":I
    :sswitch_d
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v1, v7

    .line 156
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->hold(Z)I

    move-result v6

    .line 157
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":I
    :cond_2
    move v1, v0

    .line 155
    goto :goto_1

    .line 163
    :sswitch_e
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->conference()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    :sswitch_f
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v1, v7

    .line 173
    .restart local v1    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->setMute(Z)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_3
    move v1, v0

    .line 172
    goto :goto_2

    .line 179
    :sswitch_10
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    .local v5, "_arg4":Landroid/os/Messenger;
    :goto_3
    move-object v0, p0

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IIPService$Stub;->setCallForward(IILjava/lang/String;ILandroid/os/Messenger;)I

    move-result v6

    .line 196
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v5    # "_arg4":Landroid/os/Messenger;
    .end local v6    # "_result":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Messenger;
    goto :goto_3

    .line 202
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Messenger;
    :sswitch_11
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v1, v7

    .line 206
    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 212
    .local v2, "_arg1":Landroid/os/Messenger;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->setCW(ZLandroid/os/Messenger;)I

    move-result v6

    .line 213
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v6    # "_result":I
    :cond_5
    move v1, v0

    .line 204
    goto :goto_4

    .line 210
    .restart local v1    # "_arg0":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_5

    .line 219
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :sswitch_12
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 227
    .local v1, "_arg0":Landroid/os/Messenger;
    :goto_6
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingUSSD(Landroid/os/Messenger;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 225
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_6

    .line 233
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_13
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 243
    .restart local v2    # "_arg1":Landroid/os/Messenger;
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->sendUssd(Ljava/lang/String;Landroid/os/Messenger;)I

    move-result v6

    .line 244
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v2    # "_arg1":Landroid/os/Messenger;
    .end local v6    # "_result":I
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Messenger;
    goto :goto_7

    .line 250
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Messenger;
    :sswitch_14
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 258
    .local v1, "_arg0":Landroid/os/Messenger;
    :goto_8
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForConnectionState(Landroid/os/Messenger;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 256
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_8

    .line 264
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_15
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 267
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 272
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_9
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForSubscription(Landroid/os/Messenger;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 270
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_9

    .line 278
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_16
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 281
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 286
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_a
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForCallStates(Landroid/os/Messenger;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 284
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_a

    .line 292
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_17
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    .line 295
    sget-object v8, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 300
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForEmergencyCallPref(Landroid/os/Messenger;)Z

    move-result v6

    .line 301
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v6, :cond_c

    move v0, v7

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 298
    .end local v1    # "_arg0":Landroid/os/Messenger;
    .end local v6    # "_result":Z
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_b

    .line 307
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_18
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 310
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 315
    .restart local v1    # "_arg0":Landroid/os/Messenger;
    :goto_c
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingSMS(Landroid/os/Messenger;)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 313
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Messenger;
    goto :goto_c

    .line 321
    .end local v1    # "_arg0":Landroid/os/Messenger;
    :sswitch_19
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 328
    sget-object v0, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 334
    .local v3, "_arg2":Landroid/os/Messenger;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 335
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/movial/ipphone/IIPService$Stub;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 331
    .end local v3    # "_arg2":Landroid/os/Messenger;
    .end local v4    # "_arg3":I
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Messenger;
    goto :goto_d

    .line 341
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/Messenger;
    :sswitch_1a
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    move v1, v7

    .line 345
    .local v1, "_arg0":Z
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->acknowledgeLastIncomingIpSms(ZI)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_10
    move v1, v0

    .line 343
    goto :goto_e

    .line 352
    :sswitch_1b
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 356
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .line 357
    .local v2, "_arg1":C
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->sendDtmf(IC)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 363
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":C
    :sswitch_1c
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 367
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v2, v0

    .line 368
    .restart local v2    # "_arg1":C
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->startDtmf(IC)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 374
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":C
    :sswitch_1d
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/movial/ipphone/IIPService$Stub;->stopDtmf(I)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 383
    .end local v1    # "_arg0":I
    :sswitch_1e
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/movial/ipphone/IIPService$Stub;->setCellLocation(II)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 394
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_1f
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->clearDisconnected()V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 401
    :sswitch_20
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->getContactUri()[Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v8, "com.movial.ipphone.IIPService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->isCssEnable()Z

    move-result v6

    .line 411
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v6, :cond_11

    move v0, v7

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

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
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
