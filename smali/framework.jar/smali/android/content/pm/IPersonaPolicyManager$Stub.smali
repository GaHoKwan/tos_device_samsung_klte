.class public abstract Landroid/content/pm/IPersonaPolicyManager$Stub;
.super Landroid/os/Binder;
.source "IPersonaPolicyManager.java"

# interfaces
.implements Landroid/content/pm/IPersonaPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPersonaPolicyManager"

.field static final TRANSACTION_addLockOnImage:I = 0x2b

.field static final TRANSACTION_getAirCommandEnabled:I = 0x22

.field static final TRANSACTION_getAllowAllShare:I = 0x1c

.field static final TRANSACTION_getAllowContainerReset:I = 0x12

.field static final TRANSACTION_getAllowCustomBadgeIcon:I = 0xa

.field static final TRANSACTION_getAllowCustomColorIdentification:I = 0x10

.field static final TRANSACTION_getAllowCustomPersonaIcon:I = 0xe

.field static final TRANSACTION_getAllowDLNADataTransfer:I = 0x16

.field static final TRANSACTION_getAllowExportAndDeleteFiles:I = 0x2a

.field static final TRANSACTION_getAllowExportFiles:I = 0x28

.field static final TRANSACTION_getAllowImportFiles:I = 0x26

.field static final TRANSACTION_getAllowPrint:I = 0x18

.field static final TRANSACTION_getAllowShortCutCreation:I = 0x14

.field static final TRANSACTION_getAllowUniversalCallerId:I = 0x24

.field static final TRANSACTION_getCameraModeChangeEnabled:I = 0x8

.field static final TRANSACTION_getDisableSwitchWidgetOnLockScreen:I = 0xc

.field static final TRANSACTION_getEncryptionStatus:I = 0x4

.field static final TRANSACTION_getGearSupportEnabled:I = 0x1e

.field static final TRANSACTION_getModifyLockScreenTimeout:I = 0x1a

.field static final TRANSACTION_getPasswordLockPolicy:I = 0x2

.field static final TRANSACTION_getPenWindowEnabled:I = 0x20

.field static final TRANSACTION_getRCPDataPolicy:I = 0x30

.field static final TRANSACTION_getRCPNotificationPolicy:I = 0x32

.field static final TRANSACTION_getSecureKeystoreEnabled:I = 0x6

.field static final TRANSACTION_getSwitchNotifEnabled:I = 0x34

.field static final TRANSACTION_isBadgeRequired:I = 0x2c

.field static final TRANSACTION_isBadgeRequiredFromOwner:I = 0x2d

.field static final TRANSACTION_registerReceivers:I = 0x2e

.field static final TRANSACTION_setAirCommandEnabled:I = 0x21

.field static final TRANSACTION_setAllowAllShare:I = 0x1b

.field static final TRANSACTION_setAllowContainerReset:I = 0x11

.field static final TRANSACTION_setAllowCustomBadgeIcon:I = 0x9

.field static final TRANSACTION_setAllowCustomColorIdentification:I = 0xf

.field static final TRANSACTION_setAllowCustomPersonaIcon:I = 0xd

.field static final TRANSACTION_setAllowDLNADataTransfer:I = 0x15

.field static final TRANSACTION_setAllowExportAndDeleteFiles:I = 0x29

.field static final TRANSACTION_setAllowExportFiles:I = 0x27

.field static final TRANSACTION_setAllowImportFiles:I = 0x25

.field static final TRANSACTION_setAllowPrint:I = 0x17

.field static final TRANSACTION_setAllowShortCutCreation:I = 0x13

.field static final TRANSACTION_setAllowUniversalCallerId:I = 0x23

.field static final TRANSACTION_setCameraModeChangeEnabled:I = 0x7

.field static final TRANSACTION_setDisableSwitchWidgetOnLockScreen:I = 0xb

.field static final TRANSACTION_setEncryptionStatus:I = 0x3

.field static final TRANSACTION_setGearSupportEnabled:I = 0x1d

.field static final TRANSACTION_setModifyLockScreenTimeout:I = 0x19

.field static final TRANSACTION_setPasswordLockPolicy:I = 0x1

.field static final TRANSACTION_setPenWindowEnabled:I = 0x1f

.field static final TRANSACTION_setRCPDataPolicy:I = 0x2f

.field static final TRANSACTION_setRCPNotificationPolicy:I = 0x31

.field static final TRANSACTION_setSecureKeystoreEnabled:I = 0x5

.field static final TRANSACTION_setSwitchNotifEnabled:I = 0x33


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;
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
    const-string v1, "android.content.pm.IPersonaPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPersonaPolicyManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/content/pm/IPersonaPolicyManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPersonaPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 628
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 52
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setPasswordLockPolicy(IZ)Z

    move-result v3

    .line 53
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v3, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1
    move v1, v5

    .line 51
    goto :goto_1

    .line 59
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getPasswordLockPolicy(I)Z

    move-result v3

    .line 63
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v3, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_3
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 74
    .restart local v1    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setEncryptionStatus(IZ)Z

    move-result v3

    .line 75
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v3, :cond_3

    move v5, v4

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_4
    move v1, v5

    .line 73
    goto :goto_2

    .line 81
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getEncryptionStatus(I)Z

    move-result v3

    .line 85
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v3, :cond_5

    move v5, v4

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    move v1, v4

    .line 96
    .restart local v1    # "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setSecureKeystoreEnabled(IZ)Z

    move-result v3

    .line 97
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v3, :cond_6

    move v5, v4

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_7
    move v1, v5

    .line 95
    goto :goto_3

    .line 103
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSecureKeystoreEnabled(I)Z

    move-result v3

    .line 107
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v3, :cond_8

    move v5, v4

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    move v1, v4

    .line 118
    .restart local v1    # "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setCameraModeChangeEnabled(IZ)Z

    move-result v3

    .line 119
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v3, :cond_9

    move v5, v4

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_a
    move v1, v5

    .line 117
    goto :goto_4

    .line 125
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getCameraModeChangeEnabled(I)Z

    move-result v3

    .line 129
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v3, :cond_b

    move v5, v4

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_9
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    move v1, v4

    .line 140
    .restart local v1    # "_arg1":Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomBadgeIcon(IZ)Z

    move-result v3

    .line 141
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v3, :cond_c

    move v5, v4

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_d
    move v1, v5

    .line 139
    goto :goto_5

    .line 147
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomBadgeIcon(I)Z

    move-result v3

    .line 151
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v3, :cond_e

    move v5, v4

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    move v1, v4

    .line 162
    .restart local v1    # "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setDisableSwitchWidgetOnLockScreen(IZ)Z

    move-result v3

    .line 163
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v3, :cond_f

    move v5, v4

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_10
    move v1, v5

    .line 161
    goto :goto_6

    .line 169
    .end local v0    # "_arg0":I
    :sswitch_c
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getDisableSwitchWidgetOnLockScreen(I)Z

    move-result v3

    .line 173
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v3, :cond_11

    move v5, v4

    :cond_11
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_d
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    move v1, v4

    .line 184
    .restart local v1    # "_arg1":Z
    :goto_7
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomPersonaIcon(IZ)Z

    move-result v3

    .line 185
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v3, :cond_12

    move v5, v4

    :cond_12
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_13
    move v1, v5

    .line 183
    goto :goto_7

    .line 191
    .end local v0    # "_arg0":I
    :sswitch_e
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomPersonaIcon(I)Z

    move-result v3

    .line 195
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v3, :cond_14

    move v5, v4

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_f
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    move v1, v4

    .line 206
    .restart local v1    # "_arg1":Z
    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowCustomColorIdentification(IZ)Z

    move-result v3

    .line 207
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v3, :cond_15

    move v5, v4

    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_16
    move v1, v5

    .line 205
    goto :goto_8

    .line 213
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowCustomColorIdentification(I)Z

    move-result v3

    .line 217
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v3, :cond_17

    move v5, v4

    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_11
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    move v1, v4

    .line 228
    .restart local v1    # "_arg1":Z
    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowContainerReset(IZ)Z

    move-result v3

    .line 229
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v3, :cond_18

    move v5, v4

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_19
    move v1, v5

    .line 227
    goto :goto_9

    .line 235
    .end local v0    # "_arg0":I
    :sswitch_12
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowContainerReset(I)Z

    move-result v3

    .line 239
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v3, :cond_1a

    move v5, v4

    :cond_1a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_13
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    move v1, v4

    .line 250
    .restart local v1    # "_arg1":Z
    :goto_a
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowShortCutCreation(IZ)Z

    move-result v3

    .line 251
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v3, :cond_1b

    move v5, v4

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1c
    move v1, v5

    .line 249
    goto :goto_a

    .line 257
    .end local v0    # "_arg0":I
    :sswitch_14
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowShortCutCreation(I)Z

    move-result v3

    .line 261
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v3, :cond_1d

    move v5, v4

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_15
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    move v1, v4

    .line 272
    .restart local v1    # "_arg1":Z
    :goto_b
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowDLNADataTransfer(IZ)Z

    move-result v3

    .line 273
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v3, :cond_1e

    move v5, v4

    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1f
    move v1, v5

    .line 271
    goto :goto_b

    .line 279
    .end local v0    # "_arg0":I
    :sswitch_16
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowDLNADataTransfer(I)Z

    move-result v3

    .line 283
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v3, :cond_20

    move v5, v4

    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 289
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_17
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    move v1, v4

    .line 294
    .restart local v1    # "_arg1":Z
    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowPrint(IZ)Z

    move-result v3

    .line 295
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v3, :cond_21

    move v5, v4

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_22
    move v1, v5

    .line 293
    goto :goto_c

    .line 301
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowPrint(I)Z

    move-result v3

    .line 305
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v3, :cond_23

    move v5, v4

    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 311
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_19
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 315
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    move v1, v4

    .line 316
    .restart local v1    # "_arg1":Z
    :goto_d
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setModifyLockScreenTimeout(IZ)Z

    move-result v3

    .line 317
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v3, :cond_24

    move v5, v4

    :cond_24
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_25
    move v1, v5

    .line 315
    goto :goto_d

    .line 323
    .end local v0    # "_arg0":I
    :sswitch_1a
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getModifyLockScreenTimeout(I)Z

    move-result v3

    .line 327
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v3, :cond_26

    move v5, v4

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 333
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_1b
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    move v1, v4

    .line 338
    .restart local v1    # "_arg1":Z
    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowAllShare(IZ)Z

    move-result v3

    .line 339
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v3, :cond_27

    move v5, v4

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_28
    move v1, v5

    .line 337
    goto :goto_e

    .line 345
    .end local v0    # "_arg0":I
    :sswitch_1c
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowAllShare(I)Z

    move-result v3

    .line 349
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v3, :cond_29

    move v5, v4

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 355
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_1d
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 359
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b

    move v1, v4

    .line 360
    .restart local v1    # "_arg1":Z
    :goto_f
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setGearSupportEnabled(IZ)Z

    move-result v3

    .line 361
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v3, :cond_2a

    move v5, v4

    :cond_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_2b
    move v1, v5

    .line 359
    goto :goto_f

    .line 367
    .end local v0    # "_arg0":I
    :sswitch_1e
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 370
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getGearSupportEnabled(I)Z

    move-result v3

    .line 371
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v3, :cond_2c

    move v5, v4

    :cond_2c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_1f
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 381
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    move v1, v4

    .line 382
    .restart local v1    # "_arg1":Z
    :goto_10
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setPenWindowEnabled(IZ)Z

    move-result v3

    .line 383
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v3, :cond_2d

    move v5, v4

    :cond_2d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_2e
    move v1, v5

    .line 381
    goto :goto_10

    .line 389
    .end local v0    # "_arg0":I
    :sswitch_20
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 392
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getPenWindowEnabled(I)Z

    move-result v3

    .line 393
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v3, :cond_2f

    move v5, v4

    :cond_2f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 399
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_21
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    move v1, v4

    .line 404
    .restart local v1    # "_arg1":Z
    :goto_11
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAirCommandEnabled(IZ)Z

    move-result v3

    .line 405
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v3, :cond_30

    move v5, v4

    :cond_30
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_31
    move v1, v5

    .line 403
    goto :goto_11

    .line 411
    .end local v0    # "_arg0":I
    :sswitch_22
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 414
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAirCommandEnabled(I)Z

    move-result v3

    .line 415
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v3, :cond_32

    move v5, v4

    :cond_32
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 421
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_23
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 425
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    move v1, v4

    .line 426
    .restart local v1    # "_arg1":Z
    :goto_12
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowUniversalCallerId(IZ)Z

    move-result v3

    .line 427
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v3, :cond_33

    move v5, v4

    :cond_33
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_34
    move v1, v5

    .line 425
    goto :goto_12

    .line 433
    .end local v0    # "_arg0":I
    :sswitch_24
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 436
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowUniversalCallerId(I)Z

    move-result v3

    .line 437
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v3, :cond_35

    move v5, v4

    :cond_35
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 443
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_25
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 447
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    move v1, v4

    .line 448
    .restart local v1    # "_arg1":Z
    :goto_13
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowImportFiles(IZ)Z

    move-result v3

    .line 449
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v3, :cond_36

    move v5, v4

    :cond_36
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_37
    move v1, v5

    .line 447
    goto :goto_13

    .line 455
    .end local v0    # "_arg0":I
    :sswitch_26
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 458
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowImportFiles(I)Z

    move-result v3

    .line 459
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v3, :cond_38

    move v5, v4

    :cond_38
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 465
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_27
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    move v1, v4

    .line 470
    .restart local v1    # "_arg1":Z
    :goto_14
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowExportFiles(IZ)Z

    move-result v3

    .line 471
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v3, :cond_39

    move v5, v4

    :cond_39
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_3a
    move v1, v5

    .line 469
    goto :goto_14

    .line 477
    .end local v0    # "_arg0":I
    :sswitch_28
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowExportFiles(I)Z

    move-result v3

    .line 481
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    if-eqz v3, :cond_3b

    move v5, v4

    :cond_3b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 487
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_29
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 491
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    move v1, v4

    .line 492
    .restart local v1    # "_arg1":Z
    :goto_15
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setAllowExportAndDeleteFiles(IZ)Z

    move-result v3

    .line 493
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v3, :cond_3c

    move v5, v4

    :cond_3c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_3d
    move v1, v5

    .line 491
    goto :goto_15

    .line 499
    .end local v0    # "_arg0":I
    :sswitch_2a
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 502
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getAllowExportAndDeleteFiles(I)Z

    move-result v3

    .line 503
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v3, :cond_3e

    move v5, v4

    :cond_3e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 509
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_2b
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    .line 512
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 517
    .local v0, "_arg0":Landroid/graphics/Bitmap;
    :goto_16
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 518
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v3, :cond_40

    .line 520
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    invoke-virtual {v3, p3, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 515
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :cond_3f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_16

    .line 524
    .restart local v3    # "_result":Landroid/graphics/Bitmap;
    :cond_40
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 530
    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :sswitch_2c
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isBadgeRequired()Z

    move-result v3

    .line 532
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v3, :cond_41

    move v5, v4

    :cond_41
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 538
    .end local v3    # "_result":Z
    :sswitch_2d
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->isBadgeRequiredFromOwner(Ljava/lang/String;)Z

    move-result v3

    .line 542
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    if-eqz v3, :cond_42

    move v5, v4

    :cond_42
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 548
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_2e
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->registerReceivers()V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 555
    :sswitch_2f
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 563
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    if-eqz v3, :cond_43

    move v5, v4

    :cond_43
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 569
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_30
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 573
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 581
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_31
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 587
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 588
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 589
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    if-eqz v3, :cond_44

    move v5, v4

    :cond_44
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 595
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_32
    const-string v5, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 599
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 601
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 607
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 611
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    move v1, v4

    .line 612
    .local v1, "_arg1":Z
    :goto_17
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaPolicyManager$Stub;->setSwitchNotifEnabled(IZ)Z

    move-result v3

    .line 613
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    if-eqz v3, :cond_45

    move v5, v4

    :cond_45
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_46
    move v1, v5

    .line 611
    goto :goto_17

    .line 619
    .end local v0    # "_arg0":I
    :sswitch_34
    const-string v6, "android.content.pm.IPersonaPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 622
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaPolicyManager$Stub;->getSwitchNotifEnabled(I)Z

    move-result v3

    .line 623
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v3, :cond_47

    move v5, v4

    :cond_47
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
