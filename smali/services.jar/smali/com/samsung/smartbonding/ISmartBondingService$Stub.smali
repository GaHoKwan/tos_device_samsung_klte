.class public abstract Lcom/samsung/smartbonding/ISmartBondingService$Stub;
.super Landroid/os/Binder;
.source "ISmartBondingService.java"

# interfaces
.implements Lcom/samsung/smartbonding/ISmartBondingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/ISmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/smartbonding/ISmartBondingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.smartbonding.ISmartBondingService"

.field static final TRANSACTION_getAllSmartBondingData:I = 0x7

.field static final TRANSACTION_getHttpLogEnabled:I = 0x14

.field static final TRANSACTION_getProxyInfo:I = 0x9

.field static final TRANSACTION_getSBEnabled:I = 0x2

.field static final TRANSACTION_getSBInterface:I = 0x3

.field static final TRANSACTION_getSBInterfaceEx:I = 0x4

.field static final TRANSACTION_getSBInterfaces:I = 0x8

.field static final TRANSACTION_getSBInterfacesEnabled:I = 0x10

.field static final TRANSACTION_getSBUsageStatus:I = 0xd

.field static final TRANSACTION_getSmartBondingData:I = 0x6

.field static final TRANSACTION_getWarningToastEnabled:I = 0x16

.field static final TRANSACTION_reportSBUsage:I = 0xf

.field static final TRANSACTION_requestGetAllByName:I = 0x11

.field static final TRANSACTION_responseGetAllByName:I = 0x12

.field static final TRANSACTION_setHttpLogEnabled:I = 0x13

.field static final TRANSACTION_setSBEnabled:I = 0x1

.field static final TRANSACTION_setSBUsageStatus:I = 0xe

.field static final TRANSACTION_setWarningToast:I = 0x15

.field static final TRANSACTION_startSBUsage:I = 0xa

.field static final TRANSACTION_stopSBUsage:I = 0xb

.field static final TRANSACTION_stopSBUsageWithReason:I = 0xc

.field static final TRANSACTION_submitMultiSocketData:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/smartbonding/ISmartBondingService;
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
    const-string v1, "com.samsung.smartbonding.ISmartBondingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/smartbonding/ISmartBondingService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/smartbonding/ISmartBondingService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/smartbonding/ISmartBondingService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 42
    :sswitch_0
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v9

    .line 50
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->setSBEnabled(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg0":Z
    :cond_0
    move v1, v10

    .line 49
    goto :goto_1

    .line 56
    :sswitch_2
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getSBEnabled()Z

    move-result v8

    .line 58
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v8, :cond_1

    move v10, v9

    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v8    # "_result":Z
    :sswitch_3
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getSBInterface(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getSBInterfaceEx(II)Ljava/lang/String;

    move-result-object v8

    .line 80
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 90
    .local v1, "_arg0":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    .line 91
    .local v3, "_arg1":[J
    invoke-virtual {p0, v1, v3}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->submitMultiSocketData([J[J)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v1    # "_arg0":[J
    .end local v3    # "_arg1":[J
    :sswitch_6
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getSmartBondingData(I)[J

    move-result-object v8

    .line 101
    .local v8, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 107
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[J
    :sswitch_7
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getAllSmartBondingData()[J

    move-result-object v8

    .line 109
    .restart local v8    # "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 115
    .end local v8    # "_result":[J
    :sswitch_8
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getSBInterfaces()[Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 126
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getProxyInfo(I)[Ljava/lang/String;

    move-result-object v8

    .line 127
    .restart local v8    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 137
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 139
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 141
    .local v5, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg3":Ljava/lang/String;
    move-object v0, p0

    .line 142
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->startSBUsage(JJJLjava/lang/String;)Z

    move-result v8

    .line 143
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v8, :cond_2

    move v10, v9

    :cond_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":J
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_b
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 152
    .restart local v1    # "_arg0":J
    invoke-virtual {p0, v1, v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->stopSBUsage(J)I

    move-result v8

    .line 153
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v1    # "_arg0":J
    .end local v8    # "_result":I
    :sswitch_c
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 163
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->stopSBUsageWithReason(JI)I

    move-result v8

    .line 165
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_d
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 174
    .restart local v1    # "_arg0":J
    invoke-virtual {p0, v1, v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getSBUsageStatus(J)I

    move-result v8

    .line 175
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v1    # "_arg0":J
    .end local v8    # "_result":I
    :sswitch_e
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 186
    .local v3, "_arg1":J
    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->setSBUsageStatus(IJ)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 192
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":J
    :sswitch_f
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 196
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    .line 197
    .local v3, "_arg1":[J
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->reportSBUsage(J[J)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 203
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":[J
    :sswitch_10
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getSBInterfacesEnabled()Z

    move-result v8

    .line 205
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v8, :cond_3

    move v10, v9

    :cond_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v8    # "_result":Z
    :sswitch_11
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 215
    .restart local v1    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->requestGetAllByName(JLjava/lang/String;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 222
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_12
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 225
    .restart local v1    # "_arg0":J
    invoke-virtual {p0, v1, v2}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->responseGetAllByName(J)[Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    .end local v1    # "_arg0":J
    .end local v8    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v9

    .line 235
    .local v1, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->setHttpLogEnabled(Z)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_4
    move v1, v10

    .line 234
    goto :goto_2

    .line 241
    :sswitch_14
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getHttpLogEnabled()Z

    move-result v8

    .line 243
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v8, :cond_5

    move v10, v9

    :cond_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v8    # "_result":Z
    :sswitch_15
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v9

    .line 252
    .restart local v1    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->setWarningToast(Z)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    :cond_6
    move v1, v10

    .line 251
    goto :goto_3

    .line 258
    :sswitch_16
    const-string v0, "com.samsung.smartbonding.ISmartBondingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;->getWarningToastEnabled()Z

    move-result v8

    .line 260
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v8, :cond_7

    move v10, v9

    :cond_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
