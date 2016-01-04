.class public abstract Landroid/os/IRCPManager$Stub;
.super Landroid/os/Binder;
.source "IRCPManager.java"

# interfaces
.implements Landroid/os/IRCPManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IRCPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRCPManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IRCPManager"

.field static final TRANSACTION_cancelCopyChunks:I = 0x1b

.field static final TRANSACTION_checkSAccount:I = 0x21

.field static final TRANSACTION_checkSAccountPassword:I = 0x22

.field static final TRANSACTION_copyChunks:I = 0x1a

.field static final TRANSACTION_copyClipboardFile:I = 0xe

.field static final TRANSACTION_copyFile:I = 0x14

.field static final TRANSACTION_deleteClipboardFile:I = 0x1c

.field static final TRANSACTION_deleteFile:I = 0x18

.field static final TRANSACTION_exchangeData:I = 0x1e

.field static final TRANSACTION_executeCommandForPersona:I = 0xa

.field static final TRANSACTION_getCallerInfo:I = 0xf

.field static final TRANSACTION_getFileInfo:I = 0x19

.field static final TRANSACTION_getFiles:I = 0x17

.field static final TRANSACTION_getNotifications:I = 0x6

.field static final TRANSACTION_getRCPInterface:I = 0x13

.field static final TRANSACTION_getRCPProxy:I = 0x10

.field static final TRANSACTION_getUsersToSyncFrom:I = 0xd

.field static final TRANSACTION_handleShortcut:I = 0x20

.field static final TRANSACTION_isFileExist:I = 0x16

.field static final TRANSACTION_moveFile:I = 0x15

.field static final TRANSACTION_notificationCleared:I = 0x8

.field static final TRANSACTION_queryAllProviders:I = 0x2

.field static final TRANSACTION_queryProvider:I = 0x1

.field static final TRANSACTION_refreshClipboard:I = 0x7

.field static final TRANSACTION_registerCommandExe:I = 0x5

.field static final TRANSACTION_registerExchangeData:I = 0x1d

.field static final TRANSACTION_registerMonitorCb:I = 0x1f

.field static final TRANSACTION_registerProvider:I = 0x3

.field static final TRANSACTION_registerRCPGlobalContactsDir:I = 0x11

.field static final TRANSACTION_registerRCPInterface:I = 0x12

.field static final TRANSACTION_registerSync:I = 0x4

.field static final TRANSACTION_saveSharedSandbox:I = 0xc

.field static final TRANSACTION_setupClipbardSandbox:I = 0xb

.field static final TRANSACTION_switchPersona:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IRCPManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IRCPManager;
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
    const-string v1, "android.os.IRCPManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IRCPManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IRCPManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IRCPManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IRCPManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 28
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 493
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 56
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg6":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 63
    invoke-virtual/range {v3 .. v10}, Landroid/os/IRCPManager$Stub;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v24

    .line 64
    .local v24, "_result":Landroid/content/CustomCursor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v24, :cond_0

    .line 66
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 76
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":[Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v9    # "_arg5":[Ljava/lang/String;
    .end local v10    # "_arg6":Ljava/lang/String;
    .end local v24    # "_result":Landroid/content/CustomCursor;
    :sswitch_2
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 82
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 84
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 86
    .restart local v7    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 88
    .restart local v8    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 90
    .restart local v9    # "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg6":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 91
    invoke-virtual/range {v3 .. v10}, Landroid/os/IRCPManager$Stub;->queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 92
    .local v26, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/CustomCursor;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 94
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 98
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":[Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v9    # "_arg5":[Ljava/lang/String;
    .end local v10    # "_arg6":Ljava/lang/String;
    .end local v26    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/CustomCursor;>;"
    :sswitch_3
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IProviderCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IProviderCallBack;

    move-result-object v5

    .line 103
    .local v5, "_arg1":Landroid/content/IProviderCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IRCPManager$Stub;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 109
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/content/IProviderCallBack;
    :sswitch_4
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ISyncCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncCallBack;

    move-result-object v4

    .line 112
    .local v4, "_arg0":Landroid/content/ISyncCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->registerSync(Landroid/content/ISyncCallBack;)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 118
    .end local v4    # "_arg0":Landroid/content/ISyncCallBack;
    :sswitch_5
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ICommandExeCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ICommandExeCallBack;

    move-result-object v4

    .line 121
    .local v4, "_arg0":Landroid/content/ICommandExeCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->registerCommandExe(Landroid/content/ICommandExeCallBack;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 127
    .end local v4    # "_arg0":Landroid/content/ICommandExeCallBack;
    :sswitch_6
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    .line 130
    .local v4, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->getNotifications(Z)Ljava/util/List;

    move-result-object v25

    .line 131
    .local v25, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/KnoxNotification;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 133
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 129
    .end local v4    # "_arg0":Z
    .end local v25    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/KnoxNotification;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 137
    :sswitch_7
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/os/IRCPManager$Stub;->refreshClipboard()V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 144
    :sswitch_8
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    sget-object v3, Landroid/app/KnoxNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KnoxNotification;

    .line 152
    .local v4, "_arg0":Landroid/app/KnoxNotification;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->notificationCleared(Landroid/app/KnoxNotification;)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 150
    .end local v4    # "_arg0":Landroid/app/KnoxNotification;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/KnoxNotification;
    goto :goto_3

    .line 158
    .end local v4    # "_arg0":Landroid/app/KnoxNotification;
    :sswitch_9
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 161
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->switchPersona(I)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 167
    .end local v4    # "_arg0":I
    :sswitch_a
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    sget-object v3, Landroid/app/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Command;

    .line 175
    .local v4, "_arg0":Landroid/app/Command;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->executeCommandForPersona(Landroid/app/Command;)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 173
    .end local v4    # "_arg0":Landroid/app/Command;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/app/Command;
    goto :goto_4

    .line 181
    .end local v4    # "_arg0":Landroid/app/Command;
    :sswitch_b
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/os/IRCPManager$Stub;->setupClipbardSandbox()V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 188
    :sswitch_c
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 191
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->saveSharedSandbox(I)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 197
    .end local v4    # "_arg0":I
    :sswitch_d
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->getUsersToSyncFrom(Ljava/lang/String;)[I

    move-result-object v24

    .line 201
    .local v24, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 203
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 207
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":[I
    :sswitch_e
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 214
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IRCPManager$Stub;->copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v24

    .line 215
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v24, :cond_4

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 216
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 221
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v24    # "_result":Z
    :sswitch_f
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v24

    .line 225
    .local v24, "_result":Landroid/content/CustomCursor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v24, :cond_5

    .line 227
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/CustomCursor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 231
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 237
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v24    # "_result":Landroid/content/CustomCursor;
    :sswitch_10
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/os/IRCPManager$Stub;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v24

    .line 239
    .local v24, "_result":Landroid/content/IRCPGlobalContactsDir;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v24, :cond_6

    invoke-interface/range {v24 .. v24}, Landroid/content/IRCPGlobalContactsDir;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 241
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 240
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 245
    .end local v24    # "_result":Landroid/content/IRCPGlobalContactsDir;
    :sswitch_11
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IRCPGlobalContactsDir$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPGlobalContactsDir;

    move-result-object v4

    .line 248
    .local v4, "_arg0":Landroid/content/IRCPGlobalContactsDir;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 254
    .end local v4    # "_arg0":Landroid/content/IRCPGlobalContactsDir;
    :sswitch_12
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IRCPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterface;

    move-result-object v4

    .line 257
    .local v4, "_arg0":Landroid/content/IRCPInterface;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->registerRCPInterface(Landroid/content/IRCPInterface;)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 263
    .end local v4    # "_arg0":Landroid/content/IRCPInterface;
    :sswitch_13
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Landroid/os/IRCPManager$Stub;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v24

    .line 265
    .local v24, "_result":Landroid/content/IRCPInterface;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v24, :cond_7

    invoke-interface/range {v24 .. v24}, Landroid/content/IRCPInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 267
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 266
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 271
    .end local v24    # "_result":Landroid/content/IRCPInterface;
    :sswitch_14
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 275
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 277
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 279
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/IRCPManager$Stub;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v24

    .line 281
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 287
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v24    # "_result":I
    :sswitch_15
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 293
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 295
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 296
    .restart local v7    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/IRCPManager$Stub;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v24

    .line 297
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 303
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v24    # "_result":I
    :sswitch_16
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 308
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IRCPManager$Stub;->isFileExist(Ljava/lang/String;I)Z

    move-result v24

    .line 309
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v24, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 310
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 315
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v24    # "_result":Z
    :sswitch_17
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 319
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 320
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IRCPManager$Stub;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v27

    .line 321
    .local v27, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 323
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 327
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v27    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_18
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 331
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 332
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IRCPManager$Stub;->deleteFile(Ljava/lang/String;I)Z

    move-result v24

    .line 333
    .restart local v24    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v24, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 334
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 339
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v24    # "_result":Z
    :sswitch_19
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 343
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 344
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IRCPManager$Stub;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v24

    .line 345
    .local v24, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v24, :cond_a

    .line 347
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 353
    :goto_b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 351
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 357
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v24    # "_result":Landroid/os/Bundle;
    :sswitch_1a
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 361
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 365
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 367
    .restart local v7    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 369
    .local v16, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 371
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 373
    .local v19, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v21, 0x1

    .local v21, "_arg7":Z
    :goto_c
    move-object/from16 v11, p0

    move v12, v4

    move-object v13, v5

    move v14, v6

    move-object v15, v7

    move/from16 v18, v9

    .line 374
    invoke-virtual/range {v11 .. v21}, Landroid/os/IRCPManager$Stub;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v24

    .line 375
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 373
    .end local v21    # "_arg7":Z
    .end local v24    # "_result":I
    :cond_b
    const/16 v21, 0x0

    goto :goto_c

    .line 381
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg5":I
    .end local v16    # "_arg4":J
    .end local v19    # "_arg6":J
    :sswitch_1b
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 384
    .local v22, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/IRCPManager$Stub;->cancelCopyChunks(J)V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 390
    .end local v22    # "_arg0":J
    :sswitch_1c
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/IRCPManager$Stub;->deleteClipboardFile(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 399
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 403
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRunnableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRunnableCallback;

    move-result-object v5

    .line 404
    .local v5, "_arg1":Landroid/os/IRunnableCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IRCPManager$Stub;->registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v24

    .line 405
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v24, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 406
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 411
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/IRunnableCallback;
    .end local v24    # "_result":Z
    :sswitch_1e
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 415
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 417
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 418
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 423
    .local v6, "_arg2":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/IRCPManager$Stub;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v24

    .line 424
    .local v24, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v24, :cond_e

    .line 426
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 432
    :goto_f
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 421
    .end local v6    # "_arg2":Landroid/os/Bundle;
    .end local v24    # "_result":Landroid/os/Bundle;
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/os/Bundle;
    goto :goto_e

    .line 430
    .restart local v24    # "_result":Landroid/os/Bundle;
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 436
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Landroid/os/Bundle;
    .end local v24    # "_result":Landroid/os/Bundle;
    :sswitch_1f
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 440
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRunnableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRunnableCallback;

    move-result-object v5

    .line 441
    .local v5, "_arg1":Landroid/os/IRunnableCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IRCPManager$Stub;->registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v24

    .line 442
    .local v24, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v24, :cond_f

    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 443
    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    .line 448
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/IRunnableCallback;
    .end local v24    # "_result":Z
    :sswitch_20
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 452
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 456
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 457
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 463
    .local v7, "_arg3":Landroid/graphics/Bitmap;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 465
    .restart local v8    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg5":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 466
    invoke-virtual/range {v3 .. v9}, Landroid/os/IRCPManager$Stub;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 460
    .end local v7    # "_arg3":Landroid/graphics/Bitmap;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v9    # "_arg5":Ljava/lang/String;
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Landroid/graphics/Bitmap;
    goto :goto_11

    .line 472
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Landroid/graphics/Bitmap;
    :sswitch_21
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ISAccountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISAccountCallback;

    move-result-object v5

    .line 477
    .local v5, "_arg1":Landroid/content/ISAccountCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IRCPManager$Stub;->checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 483
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/content/ISAccountCallback;
    :sswitch_22
    const-string v3, "android.os.IRCPManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 487
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ISAccountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISAccountCallback;

    move-result-object v5

    .line 488
    .restart local v5    # "_arg1":Landroid/content/ISAccountCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/os/IRCPManager$Stub;->checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    const/4 v3, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
