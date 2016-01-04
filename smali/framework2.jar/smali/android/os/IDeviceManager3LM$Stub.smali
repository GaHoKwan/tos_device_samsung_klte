.class public abstract Landroid/os/IDeviceManager3LM$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager3LM.java"

# interfaces
.implements Landroid/os/IDeviceManager3LM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceManager3LM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceManager3LM$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceManager3LM"

.field static final TRANSACTION_addApn:I = 0x3a

.field static final TRANSACTION_addOrUpdateApn:I = 0x4f

.field static final TRANSACTION_addOrUpdateApnResult:I = 0x52

.field static final TRANSACTION_blockAdb:I = 0x25

.field static final TRANSACTION_blockScreenshot:I = 0x38

.field static final TRANSACTION_blockTethering:I = 0x37

.field static final TRANSACTION_blockUsb:I = 0x2b

.field static final TRANSACTION_checkAppUninstallPolicies:I = 0x12

.field static final TRANSACTION_checkPackagePermission:I = 0x8

.field static final TRANSACTION_checkSignature:I = 0x29

.field static final TRANSACTION_clear:I = 0x1

.field static final TRANSACTION_clearApn:I = 0x3b

.field static final TRANSACTION_clearApplicationUserData:I = 0x24

.field static final TRANSACTION_clearPackagePermissions:I = 0x32

.field static final TRANSACTION_completePackageScan:I = 0x36

.field static final TRANSACTION_deleteApn:I = 0x4c

.field static final TRANSACTION_deleteApnResult:I = 0x53

.field static final TRANSACTION_deletePackage:I = 0x14

.field static final TRANSACTION_disablePackage:I = 0xa

.field static final TRANSACTION_enablePackage:I = 0xb

.field static final TRANSACTION_getActivationState:I = 0x45

.field static final TRANSACTION_getApn:I = 0x50

.field static final TRANSACTION_getApnByMccMnc:I = 0x51

.field static final TRANSACTION_getBluetoothEnabled:I = 0x6

.field static final TRANSACTION_getExternalSDEncryptionState:I = 0x33

.field static final TRANSACTION_getMultiUserEnabled:I = 0x3e

.field static final TRANSACTION_getNfcState:I = 0x21

.field static final TRANSACTION_getNotificationText:I = 0x3f

.field static final TRANSACTION_getOwnerInfo:I = 0x48

.field static final TRANSACTION_getOwnerInfoEnabled:I = 0x47

.field static final TRANSACTION_getPackageScanner:I = 0x35

.field static final TRANSACTION_getPreferredApn:I = 0x4e

.field static final TRANSACTION_getSecureOSVendorName:I = 0x40

.field static final TRANSACTION_getVersion:I = 0x2

.field static final TRANSACTION_installPackage:I = 0x13

.field static final TRANSACTION_isAdminLocked:I = 0x2e

.field static final TRANSACTION_isApnSelectable:I = 0x4a

.field static final TRANSACTION_isPackageDisabled:I = 0xd

.field static final TRANSACTION_isPackageWhitelisted:I = 0x42

.field static final TRANSACTION_isReadExternalStorageBlocked:I = 0x43

.field static final TRANSACTION_isSdEncrypted:I = 0x1f

.field static final TRANSACTION_isSsidAllowed:I = 0x27

.field static final TRANSACTION_isSsidLocked:I = 0x28

.field static final TRANSACTION_isUsbBlocked:I = 0x2c

.field static final TRANSACTION_keyStoreChangePassword:I = 0x1c

.field static final TRANSACTION_keyStoreContains:I = 0x1a

.field static final TRANSACTION_keyStoreDeleteKey:I = 0x17

.field static final TRANSACTION_keyStoreGetKey:I = 0x16

.field static final TRANSACTION_keyStorePutKey:I = 0x15

.field static final TRANSACTION_keyStoreReset:I = 0x1b

.field static final TRANSACTION_keyStoreSetPassword:I = 0x18

.field static final TRANSACTION_keyStoreUnlock:I = 0x19

.field static final TRANSACTION_lockAdmin:I = 0x2d

.field static final TRANSACTION_lockApn:I = 0x39

.field static final TRANSACTION_notification:I = 0x2a

.field static final TRANSACTION_putSettingsSecureInt:I = 0x1e

.field static final TRANSACTION_putSettingsSecureString:I = 0x1d

.field static final TRANSACTION_restoreDefaultApns:I = 0x3c

.field static final TRANSACTION_setActivationState:I = 0x44

.field static final TRANSACTION_setAllowedPackages:I = 0xc

.field static final TRANSACTION_setApnList:I = 0x4b

.field static final TRANSACTION_setAppInstallPermissionPolicies:I = 0xf

.field static final TRANSACTION_setAppInstallPkgNamePolicies:I = 0xe

.field static final TRANSACTION_setAppInstallPubkeyPolicies:I = 0x10

.field static final TRANSACTION_setAppUninstallPkgNamePolicies:I = 0x11

.field static final TRANSACTION_setBluetoothEnabled:I = 0x5

.field static final TRANSACTION_setBootLock:I = 0x3

.field static final TRANSACTION_setExternalStorageEnabled:I = 0x49

.field static final TRANSACTION_setLocationMode:I = 0x55

.field static final TRANSACTION_setLocationProviderEnabled:I = 0x30

.field static final TRANSACTION_setMultiUserEnabled:I = 0x3d

.field static final TRANSACTION_setNfcState:I = 0x22

.field static final TRANSACTION_setNotificationText:I = 0x7

.field static final TRANSACTION_setOtaDelay:I = 0x2f

.field static final TRANSACTION_setPackagePermission:I = 0x9

.field static final TRANSACTION_setPackageScanner:I = 0x34

.field static final TRANSACTION_setPackageWhitelist:I = 0x41

.field static final TRANSACTION_setPreferredApn:I = 0x4d

.field static final TRANSACTION_setPreferredApnResult:I = 0x54

.field static final TRANSACTION_setProvisionedSsids:I = 0x46

.field static final TRANSACTION_setSdEncryptionRequired:I = 0x20

.field static final TRANSACTION_setSsidFilter:I = 0x26

.field static final TRANSACTION_setWifiState:I = 0x23

.field static final TRANSACTION_setisSimulatorPermitted:I = 0x31

.field static final TRANSACTION_unlock:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IDeviceManager3LM"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IDeviceManager3LM"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDeviceManager3LM;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IDeviceManager3LM;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IDeviceManager3LM$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IDeviceManager3LM$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 859
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clear()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getVersion()I

    move-result v4

    .line 57
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v4    # "_result":I
    :sswitch_3
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v0, v6

    .line 66
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBootLock(Z)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_0
    move v0, v7

    .line 65
    goto :goto_1

    .line 72
    :sswitch_4
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->unlock()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 82
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setBluetoothEnabled(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_1
    move v0, v7

    .line 81
    goto :goto_2

    .line 88
    :sswitch_6
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getBluetoothEnabled()Z

    move-result v4

    .line 90
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v4, :cond_2

    move v7, v6

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setNotificationText(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 111
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v4, :cond_3

    move v7, v6

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v3, v6

    .line 124
    .local v3, "_arg2":Z
    :goto_3
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 125
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v4, :cond_4

    move v7, v6

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    :cond_5
    move v3, v7

    .line 123
    goto :goto_3

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->disablePackage(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->enablePackage(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 152
    .local v5, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 153
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAllowedPackages(Ljava/util/Map;)Z

    move-result v4

    .line 154
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_6

    move v7, v6

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageDisabled(Ljava/lang/String;)Z

    move-result v4

    .line 164
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_7

    move v7, v6

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 173
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 174
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v4

    .line 175
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v4, :cond_8

    move v7, v6

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_f
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 184
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 185
    .restart local v0    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPermissionPolicies(Ljava/util/Map;)Z

    move-result v4

    .line 186
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v4, :cond_9

    move v7, v6

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_10
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 195
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 196
    .restart local v0    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppInstallPubkeyPolicies(Ljava/util/Map;)Z

    move-result v4

    .line 197
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v4, :cond_a

    move v7, v6

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_11
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 206
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 207
    .restart local v0    # "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z

    move-result v4

    .line 208
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v4, :cond_b

    move v7, v6

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_12
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkAppUninstallPolicies(Ljava/lang/String;)Z

    move-result v4

    .line 218
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_c

    move v7, v6

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_13
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->installPackage(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 233
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_14
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v2, v6

    .line 238
    .local v2, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->deletePackage(Ljava/lang/String;Z)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_d
    move v2, v7

    .line 237
    goto :goto_4

    .line 244
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 250
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v4, :cond_e

    move v7, v6

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_16
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreDeleteKey(Ljava/lang/String;)Z

    move-result v4

    .line 270
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v4, :cond_f

    move v7, v6

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 276
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_18
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreSetPassword(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 285
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreUnlock(Ljava/lang/String;)Z

    move-result v4

    .line 289
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v4, :cond_10

    move v7, v6

    :cond_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1a
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreContains(Ljava/lang/String;)Z

    move-result v4

    .line 299
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v4, :cond_11

    move v7, v6

    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 305
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1b
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreReset()Z

    move-result v4

    .line 307
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v4, :cond_12

    move v7, v6

    :cond_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v4    # "_result":Z
    :sswitch_1c
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 319
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    if-eqz v4, :cond_13

    move v7, v6

    :cond_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 325
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 331
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v4, :cond_14

    move v7, v6

    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 337
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_1e
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->putSettingsSecureInt(Ljava/lang/String;I)Z

    move-result v4

    .line 343
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v4, :cond_15

    move v7, v6

    :cond_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 349
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_1f
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isSdEncrypted()Z

    move-result v4

    .line 351
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v4, :cond_16

    move v7, v6

    :cond_16
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v4    # "_result":Z
    :sswitch_20
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_17

    move v0, v6

    .line 360
    .local v0, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setSdEncryptionRequired(Z)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_17
    move v0, v7

    .line 359
    goto :goto_5

    .line 366
    :sswitch_21
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getNfcState()I

    move-result v4

    .line 368
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 374
    .end local v4    # "_result":I
    :sswitch_22
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 377
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setNfcState(I)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 383
    .end local v0    # "_arg0":I
    :sswitch_23
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setWifiState(I)V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 392
    .end local v0    # "_arg0":I
    :sswitch_24
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->clearApplicationUserData(Ljava/lang/String;)Z

    move-result v4

    .line 396
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v4, :cond_18

    move v7, v6

    :cond_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 402
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_25
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_19

    move v0, v6

    .line 405
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockAdb(Z)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_19
    move v0, v7

    .line 404
    goto :goto_6

    .line 411
    :sswitch_26
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 414
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setSsidFilter(Ljava/util/List;)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 420
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_27
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v4

    .line 424
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v4, :cond_1a

    move v7, v6

    :cond_1a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 430
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_28
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isSsidLocked(Ljava/lang/String;)Z

    move-result v4

    .line 434
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v4, :cond_1b

    move v7, v6

    :cond_1b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 440
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_29
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 443
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->checkSignature(I)Z

    move-result v4

    .line 444
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v4, :cond_1c

    move v7, v6

    :cond_1c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 450
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2a
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 454
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 456
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 457
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->notification(III)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 463
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_2b
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1d

    move v0, v6

    .line 466
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockUsb(Z)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_1d
    move v0, v7

    .line 465
    goto :goto_7

    .line 472
    :sswitch_2c
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isUsbBlocked()Z

    move-result v4

    .line 474
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v4, :cond_1e

    move v7, v6

    :cond_1e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 480
    .end local v4    # "_result":Z
    :sswitch_2d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1f

    move v0, v6

    .line 483
    .restart local v0    # "_arg0":Z
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->lockAdmin(Z)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_1f
    move v0, v7

    .line 482
    goto :goto_8

    .line 489
    :sswitch_2e
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isAdminLocked()Z

    move-result v4

    .line 491
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v4, :cond_20

    move v7, v6

    :cond_20
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 497
    .end local v4    # "_result":Z
    :sswitch_2f
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setOtaDelay(I)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 506
    .end local v0    # "_arg0":I
    :sswitch_30
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_21

    move v2, v6

    .line 511
    .local v2, "_arg1":Z
    :goto_9
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->setLocationProviderEnabled(Ljava/lang/String;Z)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_21
    move v2, v7

    .line 510
    goto :goto_9

    .line 517
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_31
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_22

    move v0, v6

    .line 520
    .local v0, "_arg0":Z
    :goto_a
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setisSimulatorPermitted(Z)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_22
    move v0, v7

    .line 519
    goto :goto_a

    .line 526
    :sswitch_32
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearPackagePermissions()V

    .line 528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 533
    :sswitch_33
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getExternalSDEncryptionState()I

    move-result v4

    .line 535
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 541
    .end local v4    # "_result":I
    :sswitch_34
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_23

    move v2, v6

    .line 547
    .restart local v2    # "_arg1":Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 548
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IDeviceManager3LM$Stub;->setPackageScanner(Ljava/lang/String;ZI)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :cond_23
    move v2, v7

    .line 545
    goto :goto_b

    .line 554
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_35
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getPackageScanner()[Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_36
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 567
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->completePackageScan(II)V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 573
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_37
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_24

    move v0, v6

    .line 576
    .local v0, "_arg0":Z
    :goto_c
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockTethering(Z)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_24
    move v0, v7

    .line 575
    goto :goto_c

    .line 582
    :sswitch_38
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_25

    move v0, v6

    .line 585
    .restart local v0    # "_arg0":Z
    :goto_d
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->blockScreenshot(Z)V

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_25
    move v0, v7

    .line 584
    goto :goto_d

    .line 591
    :sswitch_39
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_26

    move v0, v6

    .line 594
    .restart local v0    # "_arg0":Z
    :goto_e
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->lockApn(Z)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_26
    move v0, v7

    .line 593
    goto :goto_e

    .line 600
    :sswitch_3a
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 603
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 604
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->addApn(Ljava/util/Map;)V

    .line 605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 610
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_3b
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->clearApn()V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 617
    :sswitch_3c
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->restoreDefaultApns()V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 624
    :sswitch_3d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_27

    move v0, v6

    .line 627
    .local v0, "_arg0":Z
    :goto_f
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setMultiUserEnabled(Z)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_27
    move v0, v7

    .line 626
    goto :goto_f

    .line 633
    :sswitch_3e
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getMultiUserEnabled()Z

    move-result v4

    .line 635
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v4, :cond_28

    move v7, v6

    :cond_28
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 641
    .end local v4    # "_result":Z
    :sswitch_3f
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getNotificationText()Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 649
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_40
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getSecureOSVendorName()Ljava/lang/String;

    move-result-object v4

    .line 651
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 657
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 660
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setPackageWhitelist(Ljava/util/List;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 666
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_42
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v4

    .line 670
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v4, :cond_29

    move v7, v6

    :cond_29
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 676
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_43
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->isReadExternalStorageBlocked()Z

    move-result v4

    .line 678
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    if-eqz v4, :cond_2a

    move v7, v6

    :cond_2a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 684
    .end local v4    # "_result":Z
    :sswitch_44
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2b

    move v0, v6

    .line 687
    .local v0, "_arg0":Z
    :goto_10
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setActivationState(Z)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_2b
    move v0, v7

    .line 686
    goto :goto_10

    .line 693
    :sswitch_45
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getActivationState()Z

    move-result v4

    .line 695
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    if-eqz v4, :cond_2c

    move v7, v6

    :cond_2c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 701
    .end local v4    # "_result":Z
    :sswitch_46
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 704
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setProvisionedSsids(Ljava/util/List;)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 710
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_47
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getOwnerInfoEnabled()I

    move-result v4

    .line 712
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 718
    .end local v4    # "_result":I
    :sswitch_48
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getOwnerInfo()Ljava/lang/String;

    move-result-object v4

    .line 720
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 726
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_49
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2d

    move v0, v6

    .line 729
    .restart local v0    # "_arg0":Z
    :goto_11
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setExternalStorageEnabled(Z)V

    .line 730
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_2d
    move v0, v7

    .line 728
    goto :goto_11

    .line 735
    :sswitch_4a
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->isApnSelectable(Ljava/lang/String;)Z

    move-result v4

    .line 739
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    if-eqz v4, :cond_2e

    move v7, v6

    :cond_2e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 745
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4b
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 748
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/os/IDeviceManager3LM$Stub;->setApnList(Ljava/util/List;)V

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 754
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4c
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 757
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->deleteApn(I)Z

    move-result v4

    .line 758
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    if-eqz v4, :cond_2f

    move v7, v6

    :cond_2f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 764
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_4d
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 767
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredApn(I)Z

    move-result v4

    .line 768
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    if-eqz v4, :cond_30

    move v7, v6

    :cond_30
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 774
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_4e
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Landroid/os/IDeviceManager3LM$Stub;->getPreferredApn()I

    move-result v4

    .line 776
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 782
    .end local v4    # "_result":I
    :sswitch_4f
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 785
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 787
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 788
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->addOrUpdateApn(Ljava/util/Map;I)Z

    move-result v4

    .line 789
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    if-eqz v4, :cond_31

    move v7, v6

    :cond_31
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 795
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Z
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_50
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 798
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->getApn(I)Ljava/util/Map;

    move-result-object v4

    .line 799
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 805
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_51
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 809
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 810
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->getApnByMccMnc(II)Ljava/util/List;

    move-result-object v4

    .line 811
    .local v4, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 817
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;
    :sswitch_52
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 820
    .restart local v5    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 822
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/os/IDeviceManager3LM$Stub;->addOrUpdateApnResult(Ljava/util/Map;I)I

    move-result v4

    .line 824
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 830
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v2    # "_arg1":I
    .end local v4    # "_result":I
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_53
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 833
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->deleteApnResult(I)I

    move-result v4

    .line 834
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 840
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_54
    const-string v7, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 843
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setPreferredApnResult(I)I

    move-result v4

    .line 844
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 850
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_55
    const-string v8, "android.os.IDeviceManager3LM"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 853
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/os/IDeviceManager3LM$Stub;->setLocationMode(I)Z

    move-result v4

    .line 854
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    if-eqz v4, :cond_32

    move v7, v6

    :cond_32
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
