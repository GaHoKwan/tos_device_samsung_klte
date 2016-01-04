.class public abstract Landroid/os/IPersonaManager$Stub;
.super Landroid/os/Binder;
.source "IPersonaManager.java"

# interfaces
.implements Landroid/os/IPersonaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPersonaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPersonaManager"

.field static final TRANSACTION_addAppForPersona:I = 0x36

.field static final TRANSACTION_addLockOnImage:I = 0x1f

.field static final TRANSACTION_addPackageToInstallWhiteList:I = 0x3b

.field static final TRANSACTION_adminLockPersona:I = 0x32

.field static final TRANSACTION_adminUnLockPersona:I = 0x33

.field static final TRANSACTION_createPersona:I = 0x2

.field static final TRANSACTION_disablePersonaKeyGuard:I = 0x45

.field static final TRANSACTION_enablePersonaKeyGuard:I = 0x46

.field static final TRANSACTION_exists:I = 0x8

.field static final TRANSACTION_getAdminUidForPersona:I = 0x25

.field static final TRANSACTION_getAppListForPersona:I = 0x38

.field static final TRANSACTION_getCurrentPersonaForUser:I = 0x12

.field static final TRANSACTION_getDisabledHomeLaunchers:I = 0x44

.field static final TRANSACTION_getNormalizedState:I = 0x18

.field static final TRANSACTION_getPackagesFromInstallWhiteList:I = 0x3e

.field static final TRANSACTION_getParentId:I = 0xe

.field static final TRANSACTION_getParentUserForCurrentPersona:I = 0xb

.field static final TRANSACTION_getPersonaBackgroundTime:I = 0x21

.field static final TRANSACTION_getPersonaIcon:I = 0xd

.field static final TRANSACTION_getPersonaIdentification:I = 0x24

.field static final TRANSACTION_getPersonaIds:I = 0x34

.field static final TRANSACTION_getPersonaInfo:I = 0x7

.field static final TRANSACTION_getPersonaSamsungAccount:I = 0x28

.field static final TRANSACTION_getPersonaState:I = 0x17

.field static final TRANSACTION_getPersonaType:I = 0x14

.field static final TRANSACTION_getPersonas:I = 0x6

.field static final TRANSACTION_getPersonasForCreator:I = 0xa

.field static final TRANSACTION_getPersonasForUser:I = 0x9

.field static final TRANSACTION_getPhoneCaller:I = 0x10

.field static final TRANSACTION_getScreenOffTime:I = 0x40

.field static final TRANSACTION_getUserManagedPersonas:I = 0x2a

.field static final TRANSACTION_handleHomeShow:I = 0x2f

.field static final TRANSACTION_installApplications:I = 0x19

.field static final TRANSACTION_isFingerprintUsedinPersonas:I = 0x2b

.field static final TRANSACTION_isPackageInInstallWhiteList:I = 0x3d

.field static final TRANSACTION_isSessionExpired:I = 0x31

.field static final TRANSACTION_lockPersona:I = 0x2e

.field static final TRANSACTION_markForRemoval:I = 0x26

.field static final TRANSACTION_onWakeLockChange:I = 0x43

.field static final TRANSACTION_refreshTimer:I = 0x41

.field static final TRANSACTION_registerHandler:I = 0x1b

.field static final TRANSACTION_registerObserver:I = 0x1c

.field static final TRANSACTION_registerOutsideObserver:I = 0x1d

.field static final TRANSACTION_registerSystemPersonaObserver:I = 0x22

.field static final TRANSACTION_registerUser:I = 0x1

.field static final TRANSACTION_removeAppForPersona:I = 0x37

.field static final TRANSACTION_removePackageFromInstallWhiteList:I = 0x3c

.field static final TRANSACTION_removePersona:I = 0x5

.field static final TRANSACTION_resetPassword:I = 0x3a

.field static final TRANSACTION_resetPersona:I = 0x23

.field static final TRANSACTION_rollBackToPersona:I = 0x2d

.field static final TRANSACTION_rollUpToParent:I = 0x2c

.field static final TRANSACTION_savePasswordInTima:I = 0x39

.field static final TRANSACTION_setCurrentPersonaForUser:I = 0x13

.field static final TRANSACTION_setFsMountState:I = 0x47

.field static final TRANSACTION_setMaximumScreenOffTimeoutFromDeviceAdmin:I = 0x3f

.field static final TRANSACTION_setPersonaIcon:I = 0xc

.field static final TRANSACTION_setPersonaName:I = 0x11

.field static final TRANSACTION_setPersonaSamsungAccount:I = 0x29

.field static final TRANSACTION_setPersonaState:I = 0x16

.field static final TRANSACTION_setPersonaType:I = 0x15

.field static final TRANSACTION_setPhoneCaller:I = 0xf

.field static final TRANSACTION_setShortcutMode:I = 0x30

.field static final TRANSACTION_setSuperLock:I = 0x20

.field static final TRANSACTION_settingSyncAllowed:I = 0x35

.field static final TRANSACTION_switchPersona:I = 0x3

.field static final TRANSACTION_switchPersonaAndLaunch:I = 0x4

.field static final TRANSACTION_unInstallSystemApplications:I = 0x1a

.field static final TRANSACTION_unmarkForRemoval:I = 0x27

.field static final TRANSACTION_unregisterObserver:I = 0x1e

.field static final TRANSACTION_userActivity:I = 0x42


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IPersonaManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.os.IPersonaManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPersonaManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/IPersonaManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/os/IPersonaManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPersonaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 858
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaCallback;

    move-result-object v4

    .line 53
    .local v4, "_arg0":Landroid/content/pm/IPersonaCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->registerUser(Landroid/content/pm/IPersonaCallback;)Z

    move-result v21

    .line 54
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v21, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 60
    .end local v4    # "_arg0":Landroid/content/pm/IPersonaCallback;
    .end local v21    # "_result":Z
    :sswitch_2
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 68
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 79
    .local v10, "_arg5":Landroid/net/Uri;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .local v11, "_arg6":Landroid/net/Uri;
    :goto_3
    move-object/from16 v3, p0

    .line 85
    invoke-virtual/range {v3 .. v11}, Landroid/os/IPersonaManager$Stub;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v21

    .line 86
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v3, 0x1

    goto :goto_0

    .line 76
    .end local v10    # "_arg5":Landroid/net/Uri;
    .end local v11    # "_arg6":Landroid/net/Uri;
    .end local v21    # "_result":I
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "_arg5":Landroid/net/Uri;
    goto :goto_2

    .line 83
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "_arg6":Landroid/net/Uri;
    goto :goto_3

    .line 92
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Landroid/net/Uri;
    .end local v11    # "_arg6":Landroid/net/Uri;
    :sswitch_3
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 95
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->switchPersona(I)Z

    move-result v21

    .line 96
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v21, :cond_3

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 97
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 102
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_4
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 112
    .local v5, "_arg1":Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    move-result v21

    .line 113
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v21, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 110
    .end local v5    # "_arg1":Landroid/content/Intent;
    .end local v21    # "_result":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/content/Intent;
    goto :goto_5

    .line 114
    .restart local v21    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 119
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/content/Intent;
    .end local v21    # "_result":Z
    :sswitch_5
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 122
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->removePersona(I)I

    move-result v21

    .line 123
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 129
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_6
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    .line 132
    .local v4, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonas(Z)Ljava/util/List;

    move-result-object v23

    .line 133
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 135
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 131
    .end local v4    # "_arg0":Z
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    .line 139
    :sswitch_7
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v21

    .line 143
    .local v21, "_result":Landroid/content/pm/PersonaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v21, :cond_7

    .line 145
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PersonaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 149
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 155
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Landroid/content/pm/PersonaInfo;
    :sswitch_8
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 158
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->exists(I)Z

    move-result v21

    .line 159
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v21, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 160
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 165
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_9
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v5, 0x1

    .line 170
    .local v5, "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v23

    .line 171
    .restart local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 173
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 169
    .end local v5    # "_arg1":Z
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    .line 177
    .end local v4    # "_arg0":I
    :sswitch_a
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 181
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v5, 0x1

    .line 182
    .restart local v5    # "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->getPersonasForCreator(IZ)Ljava/util/List;

    move-result-object v23

    .line 183
    .restart local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 185
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 181
    .end local v5    # "_arg1":Z
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    .line 189
    .end local v4    # "_arg0":I
    :sswitch_b
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getParentUserForCurrentPersona()I

    move-result v21

    .line 191
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 197
    .end local v21    # "_result":I
    :sswitch_c
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 202
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 207
    .local v5, "_arg1":Landroid/graphics/Bitmap;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 205
    .end local v5    # "_arg1":Landroid/graphics/Bitmap;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/graphics/Bitmap;
    goto :goto_c

    .line 213
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_d
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 216
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaIcon(I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 217
    .local v21, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v21, :cond_c

    .line 219
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    :goto_d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 223
    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 229
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Landroid/graphics/Bitmap;
    :sswitch_e
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 232
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getParentId(I)I

    move-result v21

    .line 233
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 239
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_f
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->setPhoneCaller(I)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 248
    .end local v4    # "_arg0":I
    :sswitch_10
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPhoneCaller()I

    move-result v21

    .line 250
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 256
    .end local v21    # "_result":I
    :sswitch_11
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 260
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaName(ILjava/lang/String;)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 267
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_12
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 270
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getCurrentPersonaForUser(I)I

    move-result v21

    .line 271
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 277
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_13
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 281
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 282
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setCurrentPersonaForUser(II)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 288
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_14
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaType(I)Ljava/lang/String;

    move-result-object v21

    .line 292
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 298
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaType(ILjava/lang/String;)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 309
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_16
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 313
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 314
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaState(II)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 320
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_17
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 323
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaState(I)I

    move-result v21

    .line 324
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 330
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_18
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 333
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getNormalizedState(I)I

    move-result v21

    .line 334
    .restart local v21    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 340
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_19
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 344
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 345
    .local v20, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/IPersonaManager$Stub;->installApplications(ILjava/util/List;)Z

    move-result v21

    .line 346
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v21, :cond_d

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 347
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 352
    .end local v4    # "_arg0":I
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_result":Z
    :sswitch_1a
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 356
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 357
    .restart local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/IPersonaManager$Stub;->unInstallSystemApplications(ILjava/util/List;)I

    move-result v21

    .line 358
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 364
    .end local v4    # "_arg0":I
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_result":I
    :sswitch_1b
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 370
    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaObserver;

    move-result-object v6

    .line 371
    .local v6, "_arg2":Landroid/content/pm/IPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IPersonaManager$Stub;->registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 377
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Landroid/content/pm/IPersonaObserver;
    :sswitch_1c
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 381
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaObserver;

    move-result-object v5

    .line 382
    .local v5, "_arg1":Landroid/content/pm/IPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->registerObserver(Ljava/lang/String;Landroid/content/pm/IPersonaObserver;)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 388
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/content/pm/IPersonaObserver;
    :sswitch_1d
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 392
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaObserver;

    move-result-object v6

    .line 395
    .restart local v6    # "_arg2":Landroid/content/pm/IPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IPersonaManager$Stub;->registerOutsideObserver(ILjava/lang/String;Landroid/content/pm/IPersonaObserver;)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 401
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/content/pm/IPersonaObserver;
    :sswitch_1e
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaObserver;

    move-result-object v5

    .line 406
    .local v5, "_arg1":Landroid/content/pm/IPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->unregisterObserver(Ljava/lang/String;Landroid/content/pm/IPersonaObserver;)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 412
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/content/pm/IPersonaObserver;
    :sswitch_1f
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 415
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 420
    .local v4, "_arg0":Landroid/graphics/Bitmap;
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 421
    .local v21, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v21, :cond_f

    .line 423
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 429
    :goto_10
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 418
    .end local v4    # "_arg0":Landroid/graphics/Bitmap;
    .end local v21    # "_result":Landroid/graphics/Bitmap;
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_f

    .line 427
    .restart local v21    # "_result":Landroid/graphics/Bitmap;
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 433
    .end local v4    # "_arg0":Landroid/graphics/Bitmap;
    .end local v21    # "_result":Landroid/graphics/Bitmap;
    :sswitch_20
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 437
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    const/4 v5, 0x1

    .line 438
    .local v5, "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setSuperLock(IZ)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 437
    .end local v5    # "_arg1":Z
    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .line 444
    .end local v4    # "_arg0":I
    :sswitch_21
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 447
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaBackgroundTime(I)J

    move-result-wide v21

    .line 448
    .local v21, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    move-object/from16 v0, p3

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 450
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 454
    .end local v4    # "_arg0":I
    .end local v21    # "_result":J
    :sswitch_22
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object v4

    .line 457
    .local v4, "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v21

    .line 458
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    if-eqz v21, :cond_11

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 459
    :cond_11
    const/4 v3, 0x0

    goto :goto_12

    .line 464
    .end local v4    # "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    .end local v21    # "_result":Z
    :sswitch_23
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 467
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->resetPersona(I)I

    move-result v21

    .line 468
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 474
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_24
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 477
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaIdentification(I)Ljava/lang/String;

    move-result-object v21

    .line 478
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 484
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_25
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 487
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getAdminUidForPersona(I)I

    move-result v21

    .line 488
    .local v21, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 494
    .end local v4    # "_arg0":I
    .end local v21    # "_result":I
    :sswitch_26
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 498
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 499
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 504
    .local v5, "_arg1":Landroid/content/ComponentName;
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->markForRemoval(ILandroid/content/ComponentName;)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 502
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    :cond_12
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/content/ComponentName;
    goto :goto_13

    .line 510
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/content/ComponentName;
    :sswitch_27
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 513
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->unmarkForRemoval(I)V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 519
    .end local v4    # "_arg0":I
    :sswitch_28
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 522
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPersonaSamsungAccount(I)Ljava/lang/String;

    move-result-object v21

    .line 523
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 529
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 533
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setPersonaSamsungAccount(ILjava/lang/String;)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 540
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_2a
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v4, 0x1

    .line 543
    .local v4, "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getUserManagedPersonas(Z)Ljava/util/List;

    move-result-object v23

    .line 544
    .restart local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 546
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 542
    .end local v4    # "_arg0":Z
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 550
    :sswitch_2b
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 553
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->isFingerprintUsedinPersonas(I)Z

    move-result v21

    .line 554
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v21, :cond_14

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 555
    :cond_14
    const/4 v3, 0x0

    goto :goto_15

    .line 560
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_2c
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 563
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->rollUpToParent(I)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 569
    .end local v4    # "_arg0":I
    :sswitch_2d
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 572
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->rollBackToPersona(I)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 578
    .end local v4    # "_arg0":I
    :sswitch_2e
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 581
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->lockPersona(I)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 587
    .end local v4    # "_arg0":I
    :sswitch_2f
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->handleHomeShow()Z

    move-result v21

    .line 589
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    if-eqz v21, :cond_15

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 590
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 595
    .end local v21    # "_result":Z
    :sswitch_30
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 599
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    const/4 v5, 0x1

    .line 600
    .local v5, "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setShortcutMode(IZ)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 599
    .end local v5    # "_arg1":Z
    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    .line 606
    .end local v4    # "_arg0":I
    :sswitch_31
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 609
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->isSessionExpired(I)Z

    move-result v21

    .line 610
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    if-eqz v21, :cond_17

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 611
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    .line 616
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_32
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 620
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->adminLockPersona(ILjava/lang/String;)Z

    move-result v21

    .line 622
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    if-eqz v21, :cond_18

    const/4 v3, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 623
    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    .line 628
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_33
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 631
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->adminUnLockPersona(I)Z

    move-result v21

    .line 632
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v21, :cond_19

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 633
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 638
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_34
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPersonaManager$Stub;->getPersonaIds()[I

    move-result-object v21

    .line 640
    .local v21, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 642
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 646
    .end local v21    # "_result":[I
    :sswitch_35
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 649
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->settingSyncAllowed(I)Z

    move-result v21

    .line 650
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v21, :cond_1a

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 651
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 656
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_36
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 660
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 662
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 663
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IPersonaManager$Stub;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 669
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    :sswitch_37
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 673
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 675
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 676
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IPersonaManager$Stub;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 682
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    :sswitch_38
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 686
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 687
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    .line 688
    .local v24, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 690
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 694
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_39
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 698
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->savePasswordInTima(ILjava/lang/String;)Z

    move-result v21

    .line 700
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v21, :cond_1b

    const/4 v3, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 701
    :cond_1b
    const/4 v3, 0x0

    goto :goto_1c

    .line 706
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_3a
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 709
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->resetPassword(Ljava/lang/String;)Z

    move-result v21

    .line 710
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v21, :cond_1c

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 711
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 716
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_3b
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 720
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 721
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 727
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_3c
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 731
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 732
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 738
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    :sswitch_3d
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 742
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 743
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z

    move-result v21

    .line 744
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v21, :cond_1d

    const/4 v3, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 745
    :cond_1d
    const/4 v3, 0x0

    goto :goto_1e

    .line 750
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v21    # "_result":Z
    :sswitch_3e
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 753
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v24

    .line 754
    .restart local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 756
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 760
    .end local v4    # "_arg0":I
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3f
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 764
    .local v18, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 765
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/IPersonaManager$Stub;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 771
    .end local v5    # "_arg1":I
    .end local v18    # "_arg0":J
    :sswitch_40
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 774
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->getScreenOffTime(I)J

    move-result-wide v21

    .line 775
    .local v21, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    move-object/from16 v0, p3

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 777
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 781
    .end local v4    # "_arg0":I
    .end local v21    # "_result":J
    :sswitch_41
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 784
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->refreshTimer(I)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 790
    .end local v4    # "_arg0":I
    :sswitch_42
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 793
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->userActivity(I)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 799
    .end local v4    # "_arg0":I
    :sswitch_43
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v4, 0x1

    .line 803
    .local v4, "_arg0":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 805
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 807
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 809
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v8

    move-object/from16 v17, v9

    .line 810
    invoke-virtual/range {v12 .. v17}, Landroid/os/IPersonaManager$Stub;->onWakeLockChange(ZIIILjava/lang/String;)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 801
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/lang/String;
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .line 816
    :sswitch_44
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 820
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v5, 0x1

    .line 821
    .local v5, "_arg1":Z
    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->getDisabledHomeLaunchers(IZ)Ljava/util/List;

    move-result-object v24

    .line 822
    .restart local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 824
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 820
    .end local v5    # "_arg1":Z
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1f
    const/4 v5, 0x0

    goto :goto_20

    .line 828
    .end local v4    # "_arg0":I
    :sswitch_45
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 831
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->disablePersonaKeyGuard(I)Z

    move-result v21

    .line 832
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    if-eqz v21, :cond_20

    const/4 v3, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 833
    :cond_20
    const/4 v3, 0x0

    goto :goto_21

    .line 838
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_46
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 841
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IPersonaManager$Stub;->enablePersonaKeyGuard(I)Z

    move-result v21

    .line 842
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    if-eqz v21, :cond_21

    const/4 v3, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 843
    :cond_21
    const/4 v3, 0x0

    goto :goto_22

    .line 848
    .end local v4    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_47
    const-string v3, "android.os.IPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 852
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    const/4 v5, 0x1

    .line 853
    .restart local v5    # "_arg1":Z
    :goto_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IPersonaManager$Stub;->setFsMountState(IZ)V

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 852
    .end local v5    # "_arg1":Z
    :cond_22
    const/4 v5, 0x0

    goto :goto_23

    .line 41
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
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
