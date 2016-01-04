.class public abstract Lcom/samsung/location/ISLocationManager$Stub;
.super Landroid/os/Binder;
.source "ISLocationManager.java"

# interfaces
.implements Lcom/samsung/location/ISLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/location/ISLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/location/ISLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.location.ISLocationManager"

.field static final TRANSACTION_addGeofence:I = 0x4

.field static final TRANSACTION_removeGeofence:I = 0x7

.field static final TRANSACTION_reportCellGeofenceDetected:I = 0x12

.field static final TRANSACTION_reportCellGeofenceRequestFail:I = 0x13

.field static final TRANSACTION_reportFlpHardwareLocation:I = 0x14

.field static final TRANSACTION_reportGpsGeofenceAddStatus:I = 0xe

.field static final TRANSACTION_reportGpsGeofencePauseStatus:I = 0x10

.field static final TRANSACTION_reportGpsGeofenceRemoveStatus:I = 0xf

.field static final TRANSACTION_reportGpsGeofenceResumeStatus:I = 0x11

.field static final TRANSACTION_reportGpsGeofenceStatus:I = 0xd

.field static final TRANSACTION_reportGpsGeofenceTransition:I = 0xc

.field static final TRANSACTION_requestBatchOfLocations:I = 0xa

.field static final TRANSACTION_setFusedLocationHardware:I = 0x1

.field static final TRANSACTION_setGeofenceCellInterface:I = 0x3

.field static final TRANSACTION_setGpsGeofenceHardware:I = 0x2

.field static final TRANSACTION_startBatching:I = 0x8

.field static final TRANSACTION_startGeofence:I = 0x5

.field static final TRANSACTION_stopBatching:I = 0x9

.field static final TRANSACTION_stopGeofence:I = 0x6

.field static final TRANSACTION_updateBatchingOptions:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.location.ISLocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.samsung.location.ISLocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/location/ISLocationManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/location/ISLocationManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/samsung/location/ISLocationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/location/ISLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 308
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/location/IFusedLocationHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v3

    .line 55
    .local v3, "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->setFusedLocationHardware(Landroid/hardware/location/IFusedLocationHardware;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    :sswitch_2
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v3

    .line 64
    .local v3, "_arg0":Landroid/location/IGpsGeofenceHardware;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "_arg0":Landroid/location/IGpsGeofenceHardware;
    :sswitch_3
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationCellInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationCellInterface;

    move-result-object v3

    .line 73
    .local v3, "_arg0":Lcom/samsung/location/ISLocationCellInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->setGeofenceCellInterface(Lcom/samsung/location/ISLocationCellInterface;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "_arg0":Lcom/samsung/location/ISLocationCellInterface;
    :sswitch_4
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    sget-object v2, Lcom/samsung/location/SLocationParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/location/SLocationParameter;

    .line 87
    .local v3, "_arg0":Lcom/samsung/location/SLocationParameter;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->addGeofence(Lcom/samsung/location/SLocationParameter;)I

    move-result v19

    .line 88
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v2, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "_arg0":Lcom/samsung/location/SLocationParameter;
    .end local v19    # "_result":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/samsung/location/SLocationParameter;
    goto :goto_1

    .line 94
    .end local v3    # "_arg0":Lcom/samsung/location/SLocationParameter;
    :sswitch_5
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISGeofenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISGeofenceListener;

    move-result-object v4

    .line 100
    .local v4, "_arg1":Lcom/samsung/location/ISGeofenceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 106
    .local v5, "_arg2":Landroid/app/PendingIntent;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/location/ISLocationManager$Stub;->startGeofence(ILcom/samsung/location/ISGeofenceListener;Landroid/app/PendingIntent;)I

    move-result v19

    .line 107
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 104
    .end local v5    # "_arg2":Landroid/app/PendingIntent;
    .end local v19    # "_result":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_2

    .line 113
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/samsung/location/ISGeofenceListener;
    .end local v5    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_6
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 117
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 123
    .local v4, "_arg1":Landroid/app/PendingIntent;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->stopGeofence(ILandroid/app/PendingIntent;)I

    move-result v19

    .line 124
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 121
    .end local v4    # "_arg1":Landroid/app/PendingIntent;
    .end local v19    # "_result":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_3

    .line 130
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_7
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->removeGeofence(I)I

    move-result v19

    .line 134
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 140
    .end local v3    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_8
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationListener;

    move-result-object v4

    .line 145
    .local v4, "_arg1":Lcom/samsung/location/ISLocationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->startBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v19

    .line 146
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 152
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/samsung/location/ISLocationListener;
    .end local v19    # "_result":I
    :sswitch_9
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->stopBatching(I)I

    move-result v19

    .line 156
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 162
    .end local v3    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_a
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/location/ISLocationManager$Stub;->requestBatchOfLocations()I

    move-result v19

    .line 164
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 170
    .end local v19    # "_result":I
    :sswitch_b
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->updateBatchingOptions(II)I

    move-result v19

    .line 176
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 182
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v19    # "_result":I
    :sswitch_c
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 190
    .local v5, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 192
    .local v7, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    .line 194
    .local v9, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 196
    .local v11, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 198
    .local v12, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .line 200
    .local v13, "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 202
    .local v14, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 204
    .local v16, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .local v17, "_arg10":J
    move-object/from16 v2, p0

    .line 205
    invoke-virtual/range {v2 .. v18}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 211
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":D
    .end local v7    # "_arg3":D
    .end local v9    # "_arg4":D
    .end local v11    # "_arg5":F
    .end local v12    # "_arg6":F
    .end local v13    # "_arg7":F
    .end local v14    # "_arg8":J
    .end local v16    # "_arg9":I
    .end local v17    # "_arg10":J
    :sswitch_d
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 217
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 219
    .restart local v5    # "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 221
    .restart local v7    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    .line 223
    .restart local v9    # "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 225
    .restart local v11    # "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 227
    .restart local v12    # "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .line 229
    .restart local v13    # "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .restart local v14    # "_arg8":J
    move-object/from16 v2, p0

    .line 230
    invoke-virtual/range {v2 .. v15}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceStatus(IIDDDFFFJ)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 236
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":D
    .end local v7    # "_arg3":D
    .end local v9    # "_arg4":D
    .end local v11    # "_arg5":F
    .end local v12    # "_arg6":F
    .end local v13    # "_arg7":F
    .end local v14    # "_arg8":J
    :sswitch_e
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 240
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 241
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceAddStatus(II)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 247
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_f
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 251
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 252
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceRemoveStatus(II)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 258
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_10
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 263
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofencePauseStatus(II)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 269
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_11
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 274
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportGpsGeofenceResumeStatus(II)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 280
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_12
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 284
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 285
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/location/ISLocationManager$Stub;->reportCellGeofenceDetected(II)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 291
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_13
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->reportCellGeofenceRequestFail(I)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 300
    .end local v3    # "_arg0":I
    :sswitch_14
    const-string v2, "com.samsung.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/location/Location;

    .line 303
    .local v3, "_arg0":[Landroid/location/Location;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/location/ISLocationManager$Stub;->reportFlpHardwareLocation([Landroid/location/Location;)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
