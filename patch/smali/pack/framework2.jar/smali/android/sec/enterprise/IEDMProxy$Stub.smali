.class public abstract Landroid/sec/enterprise/IEDMProxy$Stub;
.super Landroid/os/Binder;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.enterprise.IEDMProxy"

.field static final TRANSACTION_AuditLogger:I = 0x45

.field static final TRANSACTION_addCallsCount:I = 0x1

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x1f

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x22

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x20

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x23

.field static final TRANSACTION_bluetoothLog:I = 0x3d

.field static final TRANSACTION_canIncomingCall:I = 0x1c

.field static final TRANSACTION_canIncomingSms:I = 0x26

.field static final TRANSACTION_canOutgoingCall:I = 0x1d

.field static final TRANSACTION_canOutgoingSms:I = 0x25

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x24

.field static final TRANSACTION_edmAddOrUpdate:I = 0x2d

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x9

.field static final TRANSACTION_getAllowUserPolicyChanges:I = 0x29

.field static final TRANSACTION_getAllowUserProfiles:I = 0x2a

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x7

.field static final TRANSACTION_getApplicationNameFromDb:I = 0x5d

.field static final TRANSACTION_getApplicationNotificationMode:I = 0x3a

.field static final TRANSACTION_getApplicationStateEnabled:I = 0x42

.field static final TRANSACTION_getApplicationStateEnabledAsUser:I = 0x43

.field static final TRANSACTION_getApplicationStateEnabledAsUserForPersona:I = 0x44

.field static final TRANSACTION_getAutomaticConnectionToWifi:I = 0x4c

.field static final TRANSACTION_getBlockedNetworks:I = 0x28

.field static final TRANSACTION_getBrowserSettingStatus:I = 0x12

.field static final TRANSACTION_getEmergencyCallOnly:I = 0x1e

.field static final TRANSACTION_getMinimumRequiredSecurity:I = 0x2c

.field static final TRANSACTION_getNetworkSSIDList:I = 0x27

.field static final TRANSACTION_getPromptCredentialsEnabled:I = 0x2b

.field static final TRANSACTION_getSealedNotificationMessagesState:I = 0x64

.field static final TRANSACTION_getSealedState:I = 0x63

.field static final TRANSACTION_getWifiSsidRestrictionList:I = 0x5c

.field static final TRANSACTION_isAccountAdditionAllowed:I = 0x5a

.field static final TRANSACTION_isAccountRemovalAllowed:I = 0x59

.field static final TRANSACTION_isAndroidBeamAllowed:I = 0x58

.field static final TRANSACTION_isApplicationForceStopDisabled:I = 0x3e

.field static final TRANSACTION_isAudioRecordAllowed:I = 0x4a

.field static final TRANSACTION_isBackgroundProcessLimitAllowed:I = 0x4f

.field static final TRANSACTION_isBackupAllowed:I = 0x40

.field static final TRANSACTION_isBlockMmsWithStorageEnabled:I = 0x53

.field static final TRANSACTION_isBlockSmsWithStorageEnabled:I = 0x52

.field static final TRANSACTION_isBluetoothDeviceAllowed:I = 0xd

.field static final TRANSACTION_isBluetoothEnabled:I = 0x11

.field static final TRANSACTION_isBluetoothLogEnabled:I = 0x3c

.field static final TRANSACTION_isBluetoothUUIDAllowed:I = 0xb

.field static final TRANSACTION_isCaCertificateTrusted:I = 0x49

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x2

.field static final TRANSACTION_isCameraEnabled:I = 0x18

.field static final TRANSACTION_isChangeRequested:I = 0x13

.field static final TRANSACTION_isClipboardAllowed:I = 0x1a

.field static final TRANSACTION_isClipboardShareAllowed:I = 0x51

.field static final TRANSACTION_isCopyContactToSimAllowed:I = 0x5e

.field static final TRANSACTION_isDateTimeChangeEnabled:I = 0x2f

.field static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x41

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xf

.field static final TRANSACTION_isGoogleCrashReportAllowed:I = 0x31

.field static final TRANSACTION_isHardwareKeyAllowed:I = 0x34

.field static final TRANSACTION_isIncomingMmsAllowed:I = 0x3f

.field static final TRANSACTION_isIncomingSmsAllowed:I = 0x37

.field static final TRANSACTION_isIntentDisabled:I = 0x8

.field static final TRANSACTION_isKillingActivitiesOnLeaveAllowed:I = 0x50

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x21

.field static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0x10

.field static final TRANSACTION_isLocationProviderBlocked:I = 0x6

.field static final TRANSACTION_isMMSCaptureEnabled:I = 0x61

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x1b

.field static final TRANSACTION_isNFCEnabled:I = 0x19

.field static final TRANSACTION_isNFCStateChangeAllowed:I = 0x5f

.field static final TRANSACTION_isNonMarketAppAllowed:I = 0x17

.field static final TRANSACTION_isOcspCheckEnabled:I = 0x48

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0xa

.field static final TRANSACTION_isOutgoingSmsAllowed:I = 0x38

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccess:I = 0x65

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccessUid:I = 0x66

.field static final TRANSACTION_isPairingEnabled:I = 0xe

.field static final TRANSACTION_isPowerOffAllowed:I = 0x36

.field static final TRANSACTION_isProfileEnabled:I = 0xc

.field static final TRANSACTION_isRevocationCheckEnabled:I = 0x47

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x14

.field static final TRANSACTION_isRoamingSyncEnabled:I = 0x15

.field static final TRANSACTION_isSBeamAllowed:I = 0x57

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0x4

.field static final TRANSACTION_isSVoiceAllowed:I = 0x55

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x33

.field static final TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x30

.field static final TRANSACTION_isSettingsChangesAllowed:I = 0x16

.field static final TRANSACTION_isSimLockedByAdmin:I = 0x5b

.field static final TRANSACTION_isStatusBarNotificationAllowed:I = 0x3b

.field static final TRANSACTION_isTaskManagerAllowed:I = 0x35

.field static final TRANSACTION_isUrlBlocked:I = 0x39

.field static final TRANSACTION_isUserRemoveCertificatesAllowed:I = 0x60

.field static final TRANSACTION_isVideoRecordAllowed:I = 0x4b

.field static final TRANSACTION_isWapPushAllowed:I = 0x56

.field static final TRANSACTION_isWifiDirectAllowed:I = 0x4e

.field static final TRANSACTION_isWifiStateChangeAllowed:I = 0x32

.field static final TRANSACTION_notifyCertificateFailure:I = 0x46

.field static final TRANSACTION_notifyCertificateRemoved:I = 0x4d

.field static final TRANSACTION_removeNetworkConfiguration:I = 0x2e

.field static final TRANSACTION_storeBlockedSmsMms:I = 0x54

.field static final TRANSACTION_storeCalling:I = 0x3

.field static final TRANSACTION_storeMMS:I = 0x62

.field static final TRANSACTION_storeSMS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p0, p0, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.sec.enterprise.IEDMProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/sec/enterprise/IEDMProxy;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    :sswitch_0
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->addCallsCount(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCallingCaptureEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_0

    move v0, v9

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v5, v9

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    :sswitch_4
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSMSCaptureEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2

    move v0, v9

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v4, v9

    :goto_2
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_3
    move v4, v0

    goto :goto_2

    :sswitch_6
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_4

    move v0, v9

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :sswitch_8
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_3
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    move v0, v9

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :sswitch_9
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    move v1, v9

    :goto_4
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowBluetoothDataTransfer(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_7

    move v0, v9

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto :goto_4

    :sswitch_a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingCallsAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_9

    move v0, v9

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_a

    move v0, v9

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isProfileEnabled(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_b

    move v0, v9

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_c

    move v0, v9

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPairingEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_d

    move v0, v9

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_f
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDiscoverableEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_e

    move v0, v9

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitedDiscoverableEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_f

    move v0, v9

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_10

    move v0, v9

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBrowserSettingStatus(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_11

    move v0, v9

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isChangeRequested()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingPushEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_12

    move v0, v9

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingSyncEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_13

    move v0, v9

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_15

    move v1, v9

    :goto_5
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSettingsChangesAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_14

    move v0, v9

    :cond_14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_15
    move v1, v0

    goto :goto_5

    :sswitch_17
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNonMarketAppAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_16

    move v0, v9

    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_18
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_18

    move v1, v9

    :goto_6
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCameraEnabled(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_17

    move v0, v9

    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_18
    move v1, v0

    goto :goto_6

    :sswitch_19
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_19

    move v0, v9

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1b

    move v1, v9

    :goto_7
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1a

    move v0, v9

    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1b
    move v1, v0

    goto :goto_7

    :sswitch_1b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1d

    move v1, v9

    :goto_8
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1c

    move v0, v9

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1d
    move v1, v0

    goto :goto_8

    :sswitch_1c
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1e

    move v0, v9

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1f

    move v0, v9

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1e
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_21

    move v1, v9

    :goto_9
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_20

    move v0, v9

    :cond_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_21
    move v1, v0

    goto :goto_9

    :sswitch_1f
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingCalls()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_22

    move v0, v9

    :cond_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_20
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_23

    move v0, v9

    :cond_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_21
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_24

    move v0, v9

    :cond_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_22
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingSms()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_25

    move v0, v9

    :cond_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_23
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingSms()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_26

    move v0, v9

    :cond_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_24
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_27

    move v0, v9

    :cond_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_25
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_28

    move v0, v9

    :cond_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_26
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_29

    move v0, v9

    :cond_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBlockedNetworks()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_29
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserPolicyChanges()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2a

    move v0, v9

    :cond_2a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2c

    move v1, v9

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserProfiles(ZI)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2b

    move v0, v9

    :cond_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2c
    move v1, v0

    goto :goto_a

    :sswitch_2b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getPromptCredentialsEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2d

    move v0, v9

    :cond_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getMinimumRequiredSecurity()I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_2e
    const/4 v1, 0x0

    goto :goto_b

    :sswitch_2e
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_2f

    move v0, v9

    :cond_2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2f
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDateTimeChangeEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_30

    move v0, v9

    :cond_30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_30
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenLockPatternVisibilityEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_31

    move v0, v9

    :cond_31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_31
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isGoogleCrashReportAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_32

    move v0, v9

    :cond_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_32
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiStateChangeAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_33

    move v0, v9

    :cond_33
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_33
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_35

    move v1, v9

    :goto_c
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenCaptureEnabled(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_34

    move v0, v9

    :cond_34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_35
    move v1, v0

    goto :goto_c

    :sswitch_34
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_37

    move v2, v9

    :goto_d
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isHardwareKeyAllowed(IZ)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_36

    move v0, v9

    :cond_36
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_37
    move v2, v0

    goto :goto_d

    :sswitch_35
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_39

    move v1, v9

    :goto_e
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTaskManagerAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_38

    move v0, v9

    :cond_38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_39
    move v1, v0

    goto :goto_e

    :sswitch_36
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3b

    move v1, v9

    :goto_f
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPowerOffAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3a

    move v0, v9

    :cond_3a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3b
    move v1, v0

    goto :goto_f

    :sswitch_37
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingSmsAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3c

    move v0, v9

    :cond_3c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_38
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingSmsAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3d

    move v0, v9

    :cond_3d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_39
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3e

    move v0, v9

    :cond_3e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3f

    move v1, v9

    :goto_10
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationNotificationMode(Z)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3f
    move v1, v0

    goto :goto_10

    :sswitch_3b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_40

    move v0, v9

    :cond_40
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3c
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothLogEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_41

    move v0, v9

    :cond_41
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3e
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_43

    move v3, v9

    :goto_11
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isApplicationForceStopDisabled(Ljava/lang/String;IZ)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_42

    move v0, v9

    :cond_42
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_43
    move v3, v0

    goto :goto_11

    :sswitch_3f
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingMmsAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_44

    move v0, v9

    :cond_44
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_40
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_46

    move v1, v9

    :goto_12
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackupAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_45

    move v0, v9

    :cond_45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_46
    move v1, v0

    goto :goto_12

    :sswitch_41
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDesktopConnectivityEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_47

    move v0, v9

    :cond_47
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_42
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_49

    move v2, v9

    :goto_13
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationStateEnabled(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_48

    move v0, v9

    :cond_48
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_49
    move v2, v0

    goto :goto_13

    :sswitch_43
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4b

    move v2, v9

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_4a

    move v0, v9

    :cond_4a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_4b
    move v2, v0

    goto :goto_14

    :sswitch_44
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4d

    move v2, v9

    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationStateEnabledAsUserForPersona(Ljava/lang/String;ZII)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_4c

    move v0, v9

    :cond_4c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_4d
    move v2, v0

    goto :goto_15

    :sswitch_45
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4e

    move v3, v9

    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4e
    move v3, v0

    goto :goto_16

    :sswitch_46
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4f

    move v3, v9

    :goto_17
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4f
    move v3, v0

    goto :goto_17

    :sswitch_47
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRevocationCheckEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_50

    move v0, v9

    :cond_50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_48
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOcspCheckEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_51

    move v0, v9

    :cond_51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_49
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_53

    move v2, v9

    :goto_18
    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCaCertificateTrusted([BZ)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_52

    move v0, v9

    :cond_52
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_53
    move v2, v0

    goto :goto_18

    :sswitch_4a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_55

    move v1, v9

    :goto_19
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAudioRecordAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_54

    move v0, v9

    :cond_54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_55
    move v1, v0

    goto :goto_19

    :sswitch_4b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_57

    move v1, v9

    :goto_1a
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isVideoRecordAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_56

    move v0, v9

    :cond_56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_57
    move v1, v0

    goto :goto_1a

    :sswitch_4c
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAutomaticConnectionToWifi()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_58

    move v0, v9

    :cond_58
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateRemoved(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_4e
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5a

    move v1, v9

    :goto_1b
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiDirectAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_59

    move v0, v9

    :cond_59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_5a
    move v1, v0

    goto :goto_1b

    :sswitch_4f
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackgroundProcessLimitAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5b

    move v0, v9

    :cond_5b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_50
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isKillingActivitiesOnLeaveAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5c

    move v0, v9

    :cond_5c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_51
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardShareAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5d

    move v0, v9

    :cond_5d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_52
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockSmsWithStorageEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5e

    move v0, v9

    :cond_5e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_53
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockMmsWithStorageEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5f

    move v0, v9

    :cond_5f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_54
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_60

    move v1, v9

    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_60
    move v1, v0

    goto :goto_1c

    :sswitch_55
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_62

    move v1, v9

    :goto_1d
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSVoiceAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_61

    move v0, v9

    :cond_61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_62
    move v1, v0

    goto :goto_1d

    :sswitch_56
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWapPushAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_63

    move v0, v9

    :cond_63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_57
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_65

    move v1, v9

    :goto_1e
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSBeamAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_64

    move v0, v9

    :cond_64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_65
    move v1, v0

    goto :goto_1e

    :sswitch_58
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_67

    move v1, v9

    :goto_1f
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAndroidBeamAllowed(Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_66

    move v0, v9

    :cond_66
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_67
    move v1, v0

    goto :goto_1f

    :sswitch_59
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_69

    move v3, v9

    :goto_20
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_68

    move v0, v9

    :cond_68
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_69
    move v3, v0

    goto :goto_20

    :sswitch_5a
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6b

    move v3, v9

    :goto_21
    invoke-virtual {p0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6a

    move v0, v9

    :cond_6a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_6b
    move v3, v0

    goto :goto_21

    :sswitch_5b
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6c

    move v0, v9

    :cond_6c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5e
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCopyContactToSimAllowed(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6d

    move v0, v9

    :cond_6d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_5f
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCStateChangeAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6e

    move v0, v9

    :cond_6e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_60
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isUserRemoveCertificatesAllowed()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_6f

    move v0, v9

    :cond_6f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_61
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMMSCaptureEnabled()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_70

    move v0, v9

    :cond_70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_62
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_71

    move v4, v9

    :goto_22
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_71
    move v4, v0

    goto :goto_22

    :sswitch_63
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSealedState()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_72

    move v0, v9

    :cond_72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_64
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSealedNotificationMessagesState()Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_73

    move v0, v9

    :cond_73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_65
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_74

    move v0, v9

    :cond_74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_66
    const-string v10, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageWhitelistedFromBTSecureAccessUid(I)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_75

    move v0, v9

    :cond_75
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
