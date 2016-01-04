.class public abstract Landroid/service/tima/ITimaService$Stub;
.super Landroid/os/Binder;
.source "ITimaService.java"

# interfaces
.implements Landroid/service/tima/ITimaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/tima/ITimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/tima/ITimaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.tima.ITimaService"

.field static final TRANSACTION_KeyStore3_del:I = 0x11

.field static final TRANSACTION_KeyStore3_exist:I = 0xe

.field static final TRANSACTION_KeyStore3_get:I = 0xf

.field static final TRANSACTION_KeyStore3_getmtime:I = 0x10

.field static final TRANSACTION_KeyStore3_init:I = 0xc

.field static final TRANSACTION_KeyStore3_put:I = 0xd

.field static final TRANSACTION_KeyStore3_saw:I = 0x12

.field static final TRANSACTION_attestation:I = 0xa

.field static final TRANSACTION_ccmGenerateCSR:I = 0x14

.field static final TRANSACTION_ccmInstallObject:I = 0x16

.field static final TRANSACTION_ccmLoadTZApp:I = 0x17

.field static final TRANSACTION_ccmRegisterForDefaultCertificate:I = 0x15

.field static final TRANSACTION_checkEvent:I = 0x1

.field static final TRANSACTION_checkHistory:I = 0x2

.field static final TRANSACTION_displayEvent:I = 0x3

.field static final TRANSACTION_getDeviceID:I = 0xb

.field static final TRANSACTION_getEventList:I = 0x4

.field static final TRANSACTION_getTimaVersion:I = 0x13

.field static final TRANSACTION_keystoreInit:I = 0x6

.field static final TRANSACTION_keystoreInstallKey:I = 0x7

.field static final TRANSACTION_keystoreRetrieveKey:I = 0x8

.field static final TRANSACTION_keystoreShutdown:I = 0x9

.field static final TRANSACTION_setISLCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;
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
    const-string v1, "android.service.tima.ITimaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/service/tima/ITimaService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/service/tima/ITimaService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/tima/ITimaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 310
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->checkEvent(II)Ljava/lang/String;

    move-result-object v9

    .line 53
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->checkHistory(II)Ljava/lang/String;

    move-result-object v9

    .line 65
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->displayEvent(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->getEventList(I)Ljava/util/List;

    move-result-object v11

    .line 84
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "_arg0":I
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaISLCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaISLCallback;

    move-result-object v1

    .line 93
    .local v1, "_arg0":Landroid/service/tima/ITimaISLCallback;
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->setISLCallback(Landroid/service/tima/ITimaISLCallback;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "_arg0":Landroid/service/tima/ITimaISLCallback;
    :sswitch_6
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->keystoreInit()I

    move-result v9

    .line 101
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 107
    .end local v9    # "_result":I
    :sswitch_7
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 112
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->keystoreInstallKey(I[B)I

    move-result v9

    .line 113
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 119
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v9    # "_result":I
    :sswitch_8
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->keystoreRetrieveKey(I)[B

    move-result-object v9

    .line 123
    .local v9, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 129
    .end local v1    # "_arg0":I
    .end local v9    # "_result":[B
    :sswitch_9
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->keystoreShutdown()I

    move-result v9

    .line 131
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 137
    .end local v9    # "_result":I
    :sswitch_a
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 140
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->attestation([B)[B

    move-result-object v9

    .line 141
    .local v9, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 147
    .end local v1    # "_arg0":[B
    .end local v9    # "_result":[B
    :sswitch_b
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->getDeviceID()[B

    move-result-object v9

    .line 149
    .restart local v9    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 155
    .end local v9    # "_result":[B
    :sswitch_c
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_init()I

    move-result v9

    .line 157
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 163
    .end local v9    # "_result":I
    :sswitch_d
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 169
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v4

    .line 172
    .local v4, "_arg3":[C
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v9

    .line 173
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 179
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[C
    .end local v9    # "_result":I
    :sswitch_e
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_exist(Ljava/lang/String;I)Z

    move-result v9

    .line 185
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 191
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_f
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    .line 196
    .local v2, "_arg1":[C
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v9

    .line 197
    .local v9, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 199
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 203
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[C
    .end local v9    # "_result":[B
    :sswitch_10
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v9

    .line 207
    .local v9, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 213
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":J
    :sswitch_11
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_del(Ljava/lang/String;I)Z

    move-result v9

    .line 219
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v9, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 220
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 225
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v9    # "_result":Z
    :sswitch_12
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/tima/ITimaService$Stub;->KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 237
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v9    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->getTimaVersion()Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 245
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    .local v5, "_arg4":Z
    :goto_3
    move-object v0, p0

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroid/service/tima/ITimaService$Stub;->ccmGenerateCSR(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v9

    .line 257
    .local v9, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 259
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 255
    .end local v5    # "_arg4":Z
    .end local v9    # "_result":[B
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 263
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 267
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 272
    .local v4, "_arg3":Z
    :goto_4
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/tima/ITimaService$Stub;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v9

    .line 273
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 271
    .end local v4    # "_arg3":Z
    .end local v9    # "_result":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 279
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_16
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 291
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 293
    .local v6, "_arg5":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    .local v8, "_arg7":Z
    :goto_5
    move-object v0, p0

    .line 296
    invoke-virtual/range {v0 .. v8}, Landroid/service/tima/ITimaService$Stub;->ccmInstallObject(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I

    move-result v9

    .line 297
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 295
    .end local v8    # "_arg7":Z
    .end local v9    # "_result":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    .line 303
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":[B
    .end local v7    # "_arg6":Ljava/lang/String;
    :sswitch_17
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Landroid/service/tima/ITimaService$Stub;->ccmLoadTZApp()I

    move-result v9

    .line 305
    .restart local v9    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
