.class public abstract Landroid/content/pm/IPersonaLockSettingsHandler$Stub;
.super Landroid/os/Binder;
.source "IPersonaLockSettingsHandler.java"

# interfaces
.implements Landroid/content/pm/IPersonaLockSettingsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaLockSettingsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaLockSettingsHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPersonaLockSettingsHandler"

.field static final TRANSACTION_checkPassword:I = 0xa

.field static final TRANSACTION_checkPattern:I = 0x8

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_havePassword:I = 0xc

.field static final TRANSACTION_havePattern:I = 0xb

.field static final TRANSACTION_removeUser:I = 0xd

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setLockPassword:I = 0x9

.field static final TRANSACTION_setLockPattern:I = 0x7

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setString:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaLockSettingsHandler;
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
    const-string v1, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPersonaLockSettingsHandler;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/content/pm/IPersonaLockSettingsHandler;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/content/pm/IPersonaLockSettingsHandler$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v6, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v1, v5

    .line 54
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setBoolean(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v4

    .line 56
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v4, :cond_1

    .line 58
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_0
    move v1, v6

    .line 52
    goto :goto_1

    .line 62
    .restart local v1    # "_arg1":Z
    .restart local v3    # "_arg2":I
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 74
    .local v1, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setLong(Ljava/lang/String;JI)Landroid/os/Bundle;

    move-result-object v4

    .line 76
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    .line 96
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v4, :cond_3

    .line 98
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v1, v5

    .line 114
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->getBoolean(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v4

    .line 116
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v4, :cond_5

    .line 118
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :cond_4
    move v1, v6

    .line 112
    goto :goto_2

    .line 122
    .restart local v1    # "_arg1":Z
    .restart local v3    # "_arg2":I
    .restart local v4    # "_result":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 134
    .local v1, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 135
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->getLong(Ljava/lang/String;JI)Landroid/os/Bundle;

    move-result-object v4

    .line 136
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v4, :cond_6

    .line 138
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 142
    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_6
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    .line 156
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v4, :cond_7

    .line 158
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 162
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_7
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 172
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setLockPattern([BI)Landroid/os/Bundle;

    move-result-object v4

    .line 174
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v4, :cond_8

    .line 176
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 180
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_8
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 190
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->checkPattern([BI)Landroid/os/Bundle;

    move-result-object v4

    .line 192
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v4, :cond_9

    .line 194
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 198
    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_9
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 208
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setLockPassword([BI)Landroid/os/Bundle;

    move-result-object v4

    .line 210
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v4, :cond_a

    .line 212
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 216
    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 222
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_a
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 226
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->checkPassword([BI)Landroid/os/Bundle;

    move-result-object v4

    .line 228
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v4, :cond_b

    .line 230
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 234
    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 240
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_b
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->havePattern(I)Landroid/os/Bundle;

    move-result-object v4

    .line 244
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v4, :cond_c

    .line 246
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 250
    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_c
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->havePassword(I)Landroid/os/Bundle;

    move-result-object v4

    .line 260
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v4, :cond_d

    .line 262
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 266
    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string v7, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->removeUser(I)Landroid/os/Bundle;

    move-result-object v4

    .line 276
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v4, :cond_e

    .line 278
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 282
    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
