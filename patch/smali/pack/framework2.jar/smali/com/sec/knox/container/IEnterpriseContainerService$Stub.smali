.class public abstract Lcom/sec/knox/container/IEnterpriseContainerService$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseContainerService.java"

# interfaces
.implements Lcom/sec/knox/container/IEnterpriseContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/IEnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/IEnterpriseContainerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.knox.container.IEnterpriseContainerService"

.field static final TRANSACTION_activateContainer:I = 0x7

.field static final TRANSACTION_adminPasswordReset:I = 0x7d

.field static final TRANSACTION_cancelCreateContainer:I = 0x6b

.field static final TRANSACTION_changeActiveContainerPasswordStatus:I = 0x6c

.field static final TRANSACTION_changePassword:I = 0x13

.field static final TRANSACTION_checkPassword:I = 0x11

.field static final TRANSACTION_containerizedAppStarting:I = 0x67

.field static final TRANSACTION_createContainer:I = 0x1

.field static final TRANSACTION_createContainerFromB2CtoB2B:I = 0x2

.field static final TRANSACTION_createContainerInternal:I = 0x3

.field static final TRANSACTION_enforcePasswordChange:I = 0x12

.field static final TRANSACTION_getAllowBluetoothMode:I = 0x48

.field static final TRANSACTION_getAllowBrowser:I = 0x54

.field static final TRANSACTION_getAllowCamera:I = 0x52

.field static final TRANSACTION_getAllowDesktopSync:I = 0x4a

.field static final TRANSACTION_getAllowInternetSharing:I = 0x46

.field static final TRANSACTION_getAllowIrDA:I = 0x4c

.field static final TRANSACTION_getAllowPOPIMAPEmail:I = 0x50

.field static final TRANSACTION_getAllowStorageCard:I = 0x4e

.field static final TRANSACTION_getAllowTextMessaging:I = 0x44

.field static final TRANSACTION_getAllowWifi:I = 0x42

.field static final TRANSACTION_getAndroidId:I = 0x68

.field static final TRANSACTION_getAppInstallationSource:I = 0x19

.field static final TRANSACTION_getAppUninstallAllowed:I = 0x1a

.field static final TRANSACTION_getContainerEmailId:I = 0x66

.field static final TRANSACTION_getContainerFirmwareVersion:I = 0x5b

.field static final TRANSACTION_getContainerForPackage:I = 0x6d

.field static final TRANSACTION_getContainerId:I = 0x8

.field static final TRANSACTION_getContainerLockOnScreenLock:I = 0x73

.field static final TRANSACTION_getContainerPackages:I = 0x4

.field static final TRANSACTION_getContainerSecurityInformation:I = 0x14

.field static final TRANSACTION_getContainerType:I = 0x18

.field static final TRANSACTION_getContainerisedString:I = 0x6e

.field static final TRANSACTION_getContainerizedPackageName:I = 0x9

.field static final TRANSACTION_getContainers:I = 0x5

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x1e

.field static final TRANSACTION_getInstalledApplications:I = 0x7b

.field static final TRANSACTION_getInstalledPackages:I = 0x7c

.field static final TRANSACTION_getLaunchIntentForContainerizedApp:I = 0x75

.field static final TRANSACTION_getLockType:I = 0x17

.field static final TRANSACTION_getMaximumFailedPasswordsForDisable:I = 0x21

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1f

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x24

.field static final TRANSACTION_getMinPasswordComplexChars:I = 0x63

.field static final TRANSACTION_getMountStatus:I = 0x1d

.field static final TRANSACTION_getOriginalPackageName:I = 0xa

.field static final TRANSACTION_getOriginalPackageNames:I = 0xb

.field static final TRANSACTION_getPassword:I = 0x64

.field static final TRANSACTION_getPasswordEnabledContainerLockTimeout:I = 0x7f

.field static final TRANSACTION_getPasswordExpiration:I = 0x25

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x26

.field static final TRANSACTION_getPasswordExpires:I = 0x61

.field static final TRANSACTION_getPasswordHistory:I = 0x3e

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x28

.field static final TRANSACTION_getPasswordMaximumLength:I = 0x2a

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x2b

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0x2d

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x2f

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x31

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0x33

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0x35

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x37

.field static final TRANSACTION_getPasswordQuality:I = 0x39

.field static final TRANSACTION_getPasswordVerifyOnlyOnModeChange:I = 0x56

.field static final TRANSACTION_getProperty:I = 0x69

.field static final TRANSACTION_getPropertyOpt:I = 0x6a

.field static final TRANSACTION_getSimplePasswordEnabled:I = 0x57

.field static final TRANSACTION_getStatus:I = 0xc

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x5e

.field static final TRANSACTION_installPackages:I = 0x1b

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x3b

.field static final TRANSACTION_isKeyguardLocked:I = 0x5c

.field static final TRANSACTION_isKeyguardSecure:I = 0x5d

.field static final TRANSACTION_isPasswordForbidden:I = 0x72

.field static final TRANSACTION_isPasswordVisisbilityEnabled:I = 0x40

.field static final TRANSACTION_lockContainer:I = 0xd

.field static final TRANSACTION_onUserInteraction:I = 0x5f

.field static final TRANSACTION_reboot:I = 0x65

.field static final TRANSACTION_registerEventReceiver:I = 0x79

.field static final TRANSACTION_removeContainer:I = 0x6

.field static final TRANSACTION_resetPassword:I = 0x3c

.field static final TRANSACTION_setAllowBluetoothMode:I = 0x47

.field static final TRANSACTION_setAllowBrowser:I = 0x53

.field static final TRANSACTION_setAllowCamera:I = 0x51

.field static final TRANSACTION_setAllowDesktopSync:I = 0x49

.field static final TRANSACTION_setAllowInternetSharing:I = 0x45

.field static final TRANSACTION_setAllowIrDA:I = 0x4b

.field static final TRANSACTION_setAllowPOPIMAPEmail:I = 0x4f

.field static final TRANSACTION_setAllowStorageCard:I = 0x4d

.field static final TRANSACTION_setAllowTextMessaging:I = 0x43

.field static final TRANSACTION_setAllowWifi:I = 0x41

.field static final TRANSACTION_setContainerLockOnScreenLock:I = 0x74

.field static final TRANSACTION_setDownloadWakeState:I = 0x80

.field static final TRANSACTION_setLockType:I = 0x16

.field static final TRANSACTION_setMaximumFailedPasswordsForDisable:I = 0x22

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x20

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x23

.field static final TRANSACTION_setMinPasswordComplexChars:I = 0x62

.field static final TRANSACTION_setPasswordEnabledContainerLockTimeout:I = 0x7e

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x27

.field static final TRANSACTION_setPasswordExpires:I = 0x60

.field static final TRANSACTION_setPasswordHistory:I = 0x3d

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x29

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x2c

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x2e

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x30

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0x32

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0x34

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0x36

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x38

.field static final TRANSACTION_setPasswordQuality:I = 0x3a

.field static final TRANSACTION_setPasswordVerifyOnlyOnModeChange:I = 0x55

.field static final TRANSACTION_setPasswordVisibilityEnabled:I = 0x3f

.field static final TRANSACTION_setSimplePasswordEnabled:I = 0x58

.field static final TRANSACTION_startApp:I = 0x70

.field static final TRANSACTION_startTimer:I = 0x76

.field static final TRANSACTION_startUpgrade:I = 0x59

.field static final TRANSACTION_stopApp:I = 0x71

.field static final TRANSACTION_stopTimer:I = 0x77

.field static final TRANSACTION_stopTimerWithTimeOut:I = 0x78

.field static final TRANSACTION_unRegisterEventReceiver:I = 0x7a

.field static final TRANSACTION_uninstallPackages:I = 0x1c

.field static final TRANSACTION_unlockContainer:I = 0xe

.field static final TRANSACTION_upgradeComplete:I = 0x5a

.field static final TRANSACTION_validatePasswordComplexity:I = 0x15

.field static final TRANSACTION_verifyPassword:I = 0xf

.field static final TRANSACTION_verifyPasswordForAutoMount:I = 0x10

.field static final TRANSACTION_wipeSDCardData:I = 0x6f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.knox.container.IEnterpriseContainerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;
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
    const-string v1, "com.sec.knox.container.IEnterpriseContainerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/knox/container/IEnterpriseContainerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sec/knox/container/IEnterpriseContainerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sec/knox/container/IEnterpriseContainerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 18
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

    .line 1852
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v3

    .line 51
    .local v3, "_arg0":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 52
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z

    move-result v12

    .line 53
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v12, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 59
    .end local v3    # "_arg0":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v4    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_2
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 65
    .local v4, "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 66
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->createContainerFromB2CtoB2B(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z

    move-result v12

    .line 67
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v12, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    const/4 v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 73
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v5    # "_arg2":I
    .end local v12    # "_result":Z
    :sswitch_3
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    sget-object v2, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 82
    .local v3, "_arg0":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 83
    .restart local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->createContainerInternal(Lcom/sec/knox/container/EnterpriseContainerObjectParam;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v12

    .line 84
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v12, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 79
    .end local v3    # "_arg0":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v12    # "_result":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    goto :goto_3

    .line 85
    .restart local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .restart local v12    # "_result":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 90
    .end local v3    # "_arg0":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v12    # "_result":Z
    :sswitch_4
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerPackages(I)Ljava/util/List;

    move-result-object v17

    .line 94
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 96
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 100
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainers()Ljava/util/List;

    move-result-object v16

    .line 102
    .local v16, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 104
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 108
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :sswitch_6
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v4

    .line 113
    .restart local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v12

    .line 114
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v12, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 115
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 120
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v12    # "_result":Z
    :sswitch_7
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->activateContainer(I)Z

    move-result v12

    .line 124
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v12, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 125
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 130
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_8
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerId(I)I

    move-result v12

    .line 134
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 140
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_9
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 146
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 152
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 158
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 164
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 167
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getOriginalPackageNames(I)Ljava/util/List;

    move-result-object v17

    .line 168
    .restart local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 170
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 174
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getStatus(I)I

    move-result v12

    .line 178
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 184
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->lockContainer(I)Z

    move-result v12

    .line 188
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v12, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 189
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 194
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->unlockContainer(I)Z

    move-result v12

    .line 198
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v12, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 199
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 204
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v5

    .line 211
    .local v5, "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->verifyPassword(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 217
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :sswitch_10
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 223
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v5

    .line 224
    .restart local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->verifyPasswordForAutoMount(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 230
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :sswitch_11
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->checkPassword(ILjava/lang/String;)I

    move-result v12

    .line 236
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 242
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_12
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 245
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->enforcePasswordChange(I)Z

    move-result v12

    .line 246
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v12, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 247
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 252
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_13
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 258
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v6

    .line 261
    .local v6, "_arg3":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->changePassword(ILjava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 267
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    :sswitch_14
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerSecurityInformation(I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object v12

    .line 271
    .local v12, "_result":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v12, :cond_9

    .line 273
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v2}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 279
    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 277
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 283
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :sswitch_15
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 290
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->validatePasswordComplexity(ILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 291
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 297
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_16
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setLockType(II)Z

    move-result v12

    .line 303
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v12, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 304
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 309
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_17
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 312
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getLockType(I)I

    move-result v12

    .line 313
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 319
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_18
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 322
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerType(I)I

    move-result v12

    .line 323
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 329
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_19
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 333
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAppInstallationSource(ILjava/lang/String;)I

    move-result v12

    .line 335
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 341
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_1a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 346
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAppUninstallAllowed(ILjava/lang/String;)Z

    move-result v12

    .line 347
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v12, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 348
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 353
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_1b
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 357
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v5

    .line 361
    .local v5, "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 363
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object/from16 v2, p0

    .line 364
    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->installPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)Z

    move-result v12

    .line 365
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v12, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 366
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 371
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":I
    .end local v12    # "_result":Z
    :sswitch_1c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 375
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 377
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v5

    .line 378
    .restart local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->uninstallPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v12

    .line 379
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v12, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 380
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 385
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .end local v12    # "_result":Z
    :sswitch_1d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 388
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMountStatus(I)Z

    move-result v12

    .line 389
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    if-eqz v12, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 390
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 395
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_1e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 398
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v12

    .line 399
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 405
    .end local v3    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_1f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 409
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 410
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 415
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v12

    .line 416
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 413
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_10

    .line 422
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_20
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 426
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 427
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 433
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 434
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 430
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_11

    .line 440
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_21
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 444
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 445
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 450
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v12

    .line 451
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 448
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_12

    .line 457
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_22
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 461
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 462
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 468
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 469
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 465
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_13

    .line 475
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_23
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 479
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 480
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 486
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 487
    .local v10, "_arg2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 483
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v10    # "_arg2":J
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_14

    .line 493
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_24
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 497
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 498
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 503
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v12

    .line 504
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 506
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 501
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":J
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_15

    .line 510
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_25
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 514
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    .line 515
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 520
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordExpiration(ILandroid/content/ComponentName;)J

    move-result-wide v12

    .line 521
    .restart local v12    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 523
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 518
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":J
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_16

    .line 527
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_26
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 531
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 532
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 537
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v12

    .line 538
    .restart local v12    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 540
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 535
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":J
    :cond_16
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_17

    .line 544
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_27
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 548
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 549
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 555
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 556
    .restart local v10    # "_arg2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 552
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v10    # "_arg2":J
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_18

    .line 562
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_28
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 566
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    .line 567
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 572
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordHistoryLength(ILandroid/content/ComponentName;)I

    move-result v12

    .line 573
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 570
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_18
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_19

    .line 579
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_29
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 583
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 584
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 590
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 591
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordHistoryLength(ILandroid/content/ComponentName;I)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 587
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_19
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1a

    .line 597
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 601
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 602
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMaximumLength(II)I

    move-result v12

    .line 603
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 609
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v12    # "_result":I
    :sswitch_2b
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 613
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 614
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 619
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v12

    .line 620
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 617
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_1a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1b

    .line 626
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 630
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 631
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 637
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 638
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 634
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_1b
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1c

    .line 644
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 648
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 649
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 654
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v12

    .line 655
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 652
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_1c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1d

    .line 661
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 665
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    .line 666
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 672
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 673
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 669
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_1d
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1e

    .line 679
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_2f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 683
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 684
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 689
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I

    move-result v12

    .line 690
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 687
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_1e
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1f

    .line 696
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_30
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 700
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 701
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 707
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 708
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 704
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_1f
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_20

    .line 714
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_31
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 718
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 719
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 724
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v12

    .line 725
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 722
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_20
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_21

    .line 731
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_32
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 735
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    .line 736
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 742
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 743
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 739
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_21
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_22

    .line 749
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_33
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 753
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    .line 754
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 759
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v12

    .line 760
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 757
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_22
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_23

    .line 766
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_34
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 770
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    .line 771
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 777
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 778
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V

    .line 779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 774
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_23
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_24

    .line 784
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_35
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 788
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    .line 789
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 794
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v12

    .line 795
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 792
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_24
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_25

    .line 801
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_36
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 805
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    .line 806
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 812
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 813
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 809
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_25
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_26

    .line 819
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_37
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 823
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    .line 824
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 829
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I

    move-result v12

    .line 830
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 827
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_26
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_27

    .line 836
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_38
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 840
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    .line 841
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 847
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 848
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V

    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 844
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_27
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_28

    .line 854
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_39
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 858
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    .line 859
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 864
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_29
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v12

    .line 865
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 862
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_28
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_29

    .line 871
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 875
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_29

    .line 876
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 882
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 883
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordQuality(ILandroid/content/ComponentName;I)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 879
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_29
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2a

    .line 889
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3b
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 892
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isActivePasswordSufficient(I)Z

    move-result v12

    .line 893
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    if-eqz v12, :cond_2a

    const/4 v2, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 894
    :cond_2a
    const/4 v2, 0x0

    goto :goto_2b

    .line 899
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_3c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 903
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 905
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 906
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->resetPassword(ILjava/lang/String;I)Z

    move-result v12

    .line 907
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    if-eqz v12, :cond_2b

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 908
    :cond_2b
    const/4 v2, 0x0

    goto :goto_2c

    .line 913
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v12    # "_result":Z
    :sswitch_3d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 917
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    .line 918
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 924
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 925
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordHistory(ILandroid/content/ComponentName;I)V

    .line 926
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 921
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_2c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2d

    .line 931
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 935
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    .line 936
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 941
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v12

    .line 942
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 939
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_2d
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2e

    .line 948
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 952
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v4, 0x1

    .line 953
    .local v4, "_arg1":Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordVisibilityEnabled(IZ)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 952
    .end local v4    # "_arg1":Z
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2f

    .line 959
    .end local v3    # "_arg0":I
    :sswitch_40
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 962
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isPasswordVisisbilityEnabled(I)Z

    move-result v12

    .line 963
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    if-eqz v12, :cond_2f

    const/4 v2, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 964
    :cond_2f
    const/4 v2, 0x0

    goto :goto_30

    .line 969
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_41
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 973
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    .line 974
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 980
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    const/4 v5, 0x1

    .line 981
    .local v5, "_arg2":Z
    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowWifi(ILandroid/content/ComponentName;Z)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 977
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_30
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_31

    .line 980
    :cond_31
    const/4 v5, 0x0

    goto :goto_32

    .line 987
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_42
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 991
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 992
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 997
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowWifi(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 998
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    if-eqz v12, :cond_33

    const/4 v2, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 995
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_32
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_33

    .line 999
    .restart local v12    # "_result":Z
    :cond_33
    const/4 v2, 0x0

    goto :goto_34

    .line 1004
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_43
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1008
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    .line 1009
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1015
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35

    const/4 v5, 0x1

    .line 1016
    .restart local v5    # "_arg2":Z
    :goto_36
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowTextMessaging(ILandroid/content/ComponentName;Z)V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1012
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_34
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_35

    .line 1015
    :cond_35
    const/4 v5, 0x0

    goto :goto_36

    .line 1022
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_44
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1026
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_36

    .line 1027
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1032
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowTextMessaging(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1033
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    if-eqz v12, :cond_37

    const/4 v2, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1030
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_36
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_37

    .line 1034
    .restart local v12    # "_result":Z
    :cond_37
    const/4 v2, 0x0

    goto :goto_38

    .line 1039
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_45
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1043
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_38

    .line 1044
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1050
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    const/4 v5, 0x1

    .line 1051
    .restart local v5    # "_arg2":Z
    :goto_3a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowInternetSharing(ILandroid/content/ComponentName;Z)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1047
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_38
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_39

    .line 1050
    :cond_39
    const/4 v5, 0x0

    goto :goto_3a

    .line 1057
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_46
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1061
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 1062
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1067
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_3b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowInternetSharing(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1068
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    if-eqz v12, :cond_3b

    const/4 v2, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1065
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_3a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3b

    .line 1069
    .restart local v12    # "_result":Z
    :cond_3b
    const/4 v2, 0x0

    goto :goto_3c

    .line 1074
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_47
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1078
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c

    .line 1079
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1085
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1086
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowBluetoothMode(ILandroid/content/ComponentName;I)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1082
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_3c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3d

    .line 1092
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_48
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1096
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    .line 1097
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1102
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowBluetoothMode(ILandroid/content/ComponentName;)I

    move-result v12

    .line 1103
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1100
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_3d
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3e

    .line 1109
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_49
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1113
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    .line 1114
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1120
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v5, 0x1

    .line 1121
    .local v5, "_arg2":Z
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowDesktopSync(ILandroid/content/ComponentName;Z)V

    .line 1122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1117
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_3e
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_3f

    .line 1120
    :cond_3f
    const/4 v5, 0x0

    goto :goto_40

    .line 1127
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1131
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40

    .line 1132
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1137
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowDesktopSync(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1138
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    if-eqz v12, :cond_41

    const/4 v2, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1135
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_40
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_41

    .line 1139
    .restart local v12    # "_result":Z
    :cond_41
    const/4 v2, 0x0

    goto :goto_42

    .line 1144
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_4b
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1148
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    .line 1149
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1155
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_43

    const/4 v5, 0x1

    .line 1156
    .restart local v5    # "_arg2":Z
    :goto_44
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowIrDA(ILandroid/content/ComponentName;Z)V

    .line 1157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1152
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_42
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_43

    .line 1155
    :cond_43
    const/4 v5, 0x0

    goto :goto_44

    .line 1162
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1166
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_44

    .line 1167
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1172
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowIrDA(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1173
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    if-eqz v12, :cond_45

    const/4 v2, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1170
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_44
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_45

    .line 1174
    .restart local v12    # "_result":Z
    :cond_45
    const/4 v2, 0x0

    goto :goto_46

    .line 1179
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_4d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1183
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_46

    .line 1184
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1190
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    const/4 v5, 0x1

    .line 1191
    .restart local v5    # "_arg2":Z
    :goto_48
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowStorageCard(ILandroid/content/ComponentName;Z)V

    .line 1192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1187
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_46
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_47

    .line 1190
    :cond_47
    const/4 v5, 0x0

    goto :goto_48

    .line 1197
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1201
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    .line 1202
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1207
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_49
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowStorageCard(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1208
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    if-eqz v12, :cond_49

    const/4 v2, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1205
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_48
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_49

    .line 1209
    .restart local v12    # "_result":Z
    :cond_49
    const/4 v2, 0x0

    goto :goto_4a

    .line 1214
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_4f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1218
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    .line 1219
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1225
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v5, 0x1

    .line 1226
    .restart local v5    # "_arg2":Z
    :goto_4c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1222
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_4a
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4b

    .line 1225
    :cond_4b
    const/4 v5, 0x0

    goto :goto_4c

    .line 1232
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_50
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1236
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4c

    .line 1237
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1242
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_4d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1243
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    if-eqz v12, :cond_4d

    const/4 v2, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1240
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_4c
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4d

    .line 1244
    .restart local v12    # "_result":Z
    :cond_4d
    const/4 v2, 0x0

    goto :goto_4e

    .line 1249
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_51
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1253
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e

    .line 1254
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1260
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v5, 0x1

    .line 1261
    .restart local v5    # "_arg2":Z
    :goto_50
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowCamera(ILandroid/content/ComponentName;Z)V

    .line 1262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1257
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_4e
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_4f

    .line 1260
    :cond_4f
    const/4 v5, 0x0

    goto :goto_50

    .line 1267
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_52
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1271
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50

    .line 1272
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1277
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_51
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowCamera(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1278
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    if-eqz v12, :cond_51

    const/4 v2, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1280
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1275
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_50
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_51

    .line 1279
    .restart local v12    # "_result":Z
    :cond_51
    const/4 v2, 0x0

    goto :goto_52

    .line 1284
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_53
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1288
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_52

    .line 1289
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1295
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    const/4 v5, 0x1

    .line 1296
    .restart local v5    # "_arg2":Z
    :goto_54
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setAllowBrowser(ILandroid/content/ComponentName;Z)V

    .line 1297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1292
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_52
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_53

    .line 1295
    :cond_53
    const/4 v5, 0x0

    goto :goto_54

    .line 1302
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_54
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1306
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    .line 1307
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1312
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_55
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAllowBrowser(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1313
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    if-eqz v12, :cond_55

    const/4 v2, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1310
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_54
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_55

    .line 1314
    .restart local v12    # "_result":Z
    :cond_55
    const/4 v2, 0x0

    goto :goto_56

    .line 1319
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_55
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1323
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56

    const/4 v4, 0x1

    .line 1324
    .local v4, "_arg1":Z
    :goto_57
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordVerifyOnlyOnModeChange(IZ)Z

    move-result v12

    .line 1325
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    if-eqz v12, :cond_57

    const/4 v2, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1323
    .end local v4    # "_arg1":Z
    .end local v12    # "_result":Z
    :cond_56
    const/4 v4, 0x0

    goto :goto_57

    .line 1326
    .restart local v4    # "_arg1":Z
    .restart local v12    # "_result":Z
    :cond_57
    const/4 v2, 0x0

    goto :goto_58

    .line 1331
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v12    # "_result":Z
    :sswitch_56
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1334
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordVerifyOnlyOnModeChange(I)Z

    move-result v12

    .line 1335
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    if-eqz v12, :cond_58

    const/4 v2, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1336
    :cond_58
    const/4 v2, 0x0

    goto :goto_59

    .line 1341
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_57
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1345
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59

    .line 1346
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1351
    .local v4, "_arg1":Landroid/content/ComponentName;
    :goto_5a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z

    move-result v12

    .line 1352
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    if-eqz v12, :cond_5a

    const/4 v2, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1349
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :cond_59
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_5a

    .line 1353
    .restart local v12    # "_result":Z
    :cond_5a
    const/4 v2, 0x0

    goto :goto_5b

    .line 1358
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Z
    :sswitch_58
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1362
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5b

    .line 1363
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1369
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v5, 0x1

    .line 1370
    .restart local v5    # "_arg2":Z
    :goto_5d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V

    .line 1371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1366
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    :cond_5b
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_5c

    .line 1369
    :cond_5c
    const/4 v5, 0x0

    goto :goto_5d

    .line 1376
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_59
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1379
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->startUpgrade(I)Z

    move-result v12

    .line 1380
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    if-eqz v12, :cond_5d

    const/4 v2, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1381
    :cond_5d
    const/4 v2, 0x0

    goto :goto_5e

    .line 1386
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_5a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1389
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->upgradeComplete(I)Z

    move-result v12

    .line 1390
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    if-eqz v12, :cond_5e

    const/4 v2, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1391
    :cond_5e
    const/4 v2, 0x0

    goto :goto_5f

    .line 1396
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_5b
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1399
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerFirmwareVersion(I)Ljava/lang/String;

    move-result-object v12

    .line 1400
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1402
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1406
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_5c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1409
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isKeyguardLocked(I)Z

    move-result v12

    .line 1410
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    if-eqz v12, :cond_5f

    const/4 v2, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1411
    :cond_5f
    const/4 v2, 0x0

    goto :goto_60

    .line 1416
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_5d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1419
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isKeyguardSecure(I)Z

    move-result v12

    .line 1420
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    if-eqz v12, :cond_60

    const/4 v2, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1421
    :cond_60
    const/4 v2, 0x0

    goto :goto_61

    .line 1426
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_5e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1429
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->inKeyguardRestrictedInputMode(I)Z

    move-result v12

    .line 1430
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    if-eqz v12, :cond_61

    const/4 v2, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1431
    :cond_61
    const/4 v2, 0x0

    goto :goto_62

    .line 1436
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_5f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1439
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->onUserInteraction(I)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1445
    .end local v3    # "_arg0":I
    :sswitch_60
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1449
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    .line 1450
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1456
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1457
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordExpires(ILandroid/content/ComponentName;I)V

    .line 1458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1453
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_62
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_63

    .line 1463
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_61
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1467
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_63

    .line 1468
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1473
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_64
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordExpires(ILandroid/content/ComponentName;)I

    move-result v12

    .line 1474
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1471
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_63
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_64

    .line 1480
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_62
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1484
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_64

    .line 1485
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1491
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1492
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V

    .line 1493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1488
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":I
    :cond_64
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_65

    .line 1498
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_63
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1502
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_65

    .line 1503
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1508
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_66
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getMinPasswordComplexChars(ILandroid/content/ComponentName;)I

    move-result v12

    .line 1509
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1511
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1506
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":I
    :cond_65
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_66

    .line 1515
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_64
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1519
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66

    .line 1520
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1525
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    :goto_67
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPassword(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v12

    .line 1526
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1528
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1523
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v12    # "_result":Ljava/lang/String;
    :cond_66
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_67

    .line 1532
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_65
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1536
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1537
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->reboot(ILjava/lang/String;)V

    .line 1538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1543
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_66
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1546
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerEmailId(I)Ljava/lang/String;

    move-result-object v12

    .line 1547
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1549
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1553
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_67
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1556
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->containerizedAppStarting(I)V

    .line 1557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1562
    .end local v3    # "_arg0":I
    :sswitch_68
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1565
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getAndroidId(I)Ljava/lang/String;

    move-result-object v12

    .line 1566
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1568
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1572
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1576
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1577
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1578
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1580
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1584
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1588
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1590
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1591
    .local v5, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPropertyOpt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1592
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1594
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1598
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_6b
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1601
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->cancelCreateContainer(I)Z

    move-result v12

    .line 1602
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1603
    if-eqz v12, :cond_67

    const/4 v2, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1603
    :cond_67
    const/4 v2, 0x0

    goto :goto_68

    .line 1608
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_6c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1611
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->changeActiveContainerPasswordStatus(I)V

    .line 1612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1617
    .end local v3    # "_arg0":I
    :sswitch_6d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1620
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerForPackage(Ljava/lang/String;)I

    move-result v12

    .line 1621
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1627
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_6e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1631
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1632
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1633
    .local v12, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1634
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1635
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1639
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_6f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1642
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->wipeSDCardData(I)Z

    move-result v12

    .line 1643
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    if-eqz v12, :cond_68

    const/4 v2, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1644
    :cond_68
    const/4 v2, 0x0

    goto :goto_69

    .line 1649
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_70
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1653
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1655
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1656
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->startApp(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 1657
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1658
    if-eqz v12, :cond_69

    const/4 v2, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1658
    :cond_69
    const/4 v2, 0x0

    goto :goto_6a

    .line 1663
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_71
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1667
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1668
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->stopApp(ILjava/lang/String;)Z

    move-result v12

    .line 1669
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    if-eqz v12, :cond_6a

    const/4 v2, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1670
    :cond_6a
    const/4 v2, 0x0

    goto :goto_6b

    .line 1675
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_72
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1679
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1680
    .restart local v4    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->isPasswordForbidden(ILjava/lang/String;)Z

    move-result v12

    .line 1681
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    if-eqz v12, :cond_6b

    const/4 v2, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1682
    :cond_6b
    const/4 v2, 0x0

    goto :goto_6c

    .line 1687
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Z
    :sswitch_73
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1690
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getContainerLockOnScreenLock(I)Z

    move-result v12

    .line 1691
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    if-eqz v12, :cond_6c

    const/4 v2, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1692
    :cond_6c
    const/4 v2, 0x0

    goto :goto_6d

    .line 1697
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_74
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1701
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d

    const/4 v4, 0x1

    .line 1702
    .local v4, "_arg1":Z
    :goto_6e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setContainerLockOnScreenLock(IZ)Z

    move-result v12

    .line 1703
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1704
    if-eqz v12, :cond_6e

    const/4 v2, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1705
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1701
    .end local v4    # "_arg1":Z
    .end local v12    # "_result":Z
    :cond_6d
    const/4 v4, 0x0

    goto :goto_6e

    .line 1704
    .restart local v4    # "_arg1":Z
    .restart local v12    # "_result":Z
    :cond_6e
    const/4 v2, 0x0

    goto :goto_6f

    .line 1709
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Z
    .end local v12    # "_result":Z
    :sswitch_75
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1713
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1714
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getLaunchIntentForContainerizedApp(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 1715
    .local v12, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    if-eqz v12, :cond_6f

    .line 1717
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1718
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1723
    :goto_70
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1721
    :cond_6f
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_70

    .line 1727
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":Landroid/content/Intent;
    :sswitch_76
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1731
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1732
    .local v4, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->startTimer(ILandroid/os/IBinder;)Z

    move-result v12

    .line 1733
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    if-eqz v12, :cond_70

    const/4 v2, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1734
    :cond_70
    const/4 v2, 0x0

    goto :goto_71

    .line 1739
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v12    # "_result":Z
    :sswitch_77
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1743
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1744
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->stopTimer(ILandroid/os/IBinder;)Z

    move-result v12

    .line 1745
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    if-eqz v12, :cond_71

    const/4 v2, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1746
    :cond_71
    const/4 v2, 0x0

    goto :goto_72

    .line 1751
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v12    # "_result":Z
    :sswitch_78
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1755
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1757
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 1758
    .restart local v10    # "_arg2":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->stopTimerWithTimeOut(ILandroid/os/IBinder;J)Z

    move-result v12

    .line 1759
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    if-eqz v12, :cond_72

    const/4 v2, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1760
    :cond_72
    const/4 v2, 0x0

    goto :goto_73

    .line 1765
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v10    # "_arg2":J
    .end local v12    # "_result":Z
    :sswitch_79
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1769
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 1771
    .local v4, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;

    move-result-object v5

    .line 1772
    .local v5, "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->registerEventReceiver(I[ILcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z

    move-result v12

    .line 1773
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    if-eqz v12, :cond_73

    const/4 v2, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1774
    :cond_73
    const/4 v2, 0x0

    goto :goto_74

    .line 1779
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_arg2":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    .end local v12    # "_result":Z
    :sswitch_7a
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;

    move-result-object v3

    .line 1782
    .local v3, "_arg0":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->unRegisterEventReceiver(Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;)Z

    move-result v12

    .line 1783
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    if-eqz v12, :cond_74

    const/4 v2, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1784
    :cond_74
    const/4 v2, 0x0

    goto :goto_75

    .line 1789
    .end local v3    # "_arg0":Lcom/sec/enterprise/knox/IEnterpriseContainerEventReceiver;
    .end local v12    # "_result":Z
    :sswitch_7b
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1793
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1794
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v14

    .line 1795
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1797
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1801
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_7c
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1805
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1806
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v15

    .line 1807
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1809
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1813
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_7d
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1816
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->adminPasswordReset(I)Z

    move-result v12

    .line 1817
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    if-eqz v12, :cond_75

    const/4 v2, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1818
    :cond_75
    const/4 v2, 0x0

    goto :goto_76

    .line 1823
    .end local v3    # "_arg0":I
    .end local v12    # "_result":Z
    :sswitch_7e
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1827
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1828
    .local v8, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setPasswordEnabledContainerLockTimeout(IJ)V

    .line 1829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1834
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":J
    :sswitch_7f
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1837
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->getPasswordEnabledContainerLockTimeout(I)J

    move-result-wide v12

    .line 1838
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 1840
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1844
    .end local v3    # "_arg0":I
    .end local v12    # "_result":J
    :sswitch_80
    const-string v2, "com.sec.knox.container.IEnterpriseContainerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1847
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->setDownloadWakeState(I)V

    .line 1848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1849
    const/4 v2, 0x1

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
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
